import sys
import re

Label = []
Insts = []
Li_Imm = []
cur = 0
li_num = 0
section_num = 0 #0:text, 1:data
JMP_Inst = ['beq', 'bne', 'blt', 'bge', 'jal']

with open(sys.argv[1]) as fin,  open(sys.argv[2], "w") as fout:
    while True:
        s = fin.readline()
        if s:
            Insts.append(s)
            len_s = len(s)
            if section_num == 0:
                if s != '\n':
                    if s[len_s-2] == ':':
                        Label.append([s[0:len_s-2],cur*4])
                    elif s[1] == 'l' and (s[2] == 'i' or s[2] == 'a'):
                        cnt = 0
                        const = ''
                        for i in range(len_s):
                            if cnt != 1:
                                if s[i] == ',':
                                    cnt += 1
                            else:
                                if s[i] != ' ':
                                    const += s[i]
                        Li_Imm.append(const.strip())
                        cur += 2
                    elif s == '.section\t.text\n':
                        Insts.pop() #remove
                    elif s == '.section\t.data\n':
                        section_num += 1
                    else:
                        cur += 1
                else:
                    break
            else:
                if s != '\n':
                    if s[len_s-2] == ':':
                        t = fin.readline()
                        Insts.append(t)
                        if (t[0:8] == '\t.4byte\t'):
                            imm = int(t[8:], 16)
                            Label.append([s[0:len_s-2], imm])
                else:
                    break
        else:
            break
    for i in range(len(Insts)):
        if Insts[i][1:4] in JMP_Inst and Insts[i][1:5] != 'jalr':
            cnt = 0
            const = ''
            if Insts[i][1:4] == 'jal':
                for j in range(len(Insts[i])):
                    if cnt != 1:
                        if Insts[i][j] == ',':
                            cnt += 1
                    else:
                        if Insts[i][j] != ' ':
                            const += Insts[i][j]
            else:
                for j in range(len(Insts[i])):
                    if cnt != 2:
                        if Insts[i][j] == ',':
                            cnt += 1
                    else:
                        if Insts[i][j] != ' ':
                            const += Insts[i][j]
            if re.match('-*\d', const):
                imm = int(const)
                offset = 0
                playback = abs(imm)//4
                j = i
                if imm > 0:
                    while playback > 0:
                        if Insts[j][1] == 'l' and (Insts[j][2] == 'i' or Insts[j][2] == 'a'):
                            offset += 1
                            playback -= 1
                        elif Insts[j][len(Insts[j])-2] == ':':
                            None
                        else:
                            playback -= 1
                        j += 1
                    imm += offset*4
                    replace_pos = 0
                    for j in range(1,len(Insts[i])):
                        if Insts[i][len(Insts[i])-j:len(Insts[i])] == const:
                            replace_pos = j
                            break
                    Insts[i] = Insts[i][:len(Insts[i])-replace_pos]+str(imm)+'\n'
                else:
                    while playback >= 0:
                        if Insts[j][1] == 'l' and (Insts[j][2] == 'i' or Insts[j][2] == 'a'):
                            offset += 1
                            playback -= 1
                        elif Insts[j][len(Insts[j])-2] == ':':
                            None
                        else:
                            playback -= 1
                        j -= 1
                    imm -= offset*4
                    replace_pos = 0
                    for j in range(1,len(Insts[i])):
                        if Insts[i][len(Insts[i])-j:len(Insts[i])] == const:
                            replace_pos = j
                            break
                    Insts[i] = Insts[i][:len(Insts[i])-replace_pos]+str(imm)+'\n'
            else:
                None
    for i in range(len(Insts)):
        if Insts[i][1] == 'l' and (Insts[i][2] == 'i' or Insts[i][2] == 'a'):
            flag = False
            temp = 0
            for j in range(len(Label)):
                if Label[j][0] == Li_Imm[li_num]:
                    flag = True
                    temp = j
                    break
            if flag:
                rd = ''
                for j in range(4, len(Insts[i])):
                    if Insts[i][j] != ',':
                        rd += Insts[i][j]
                    else:
                        break
                x = Label[temp][1]
                top_20 = x >> 12
                under_12 = x & 0b111111111111
                fout.write('\tlui\t'+rd+', '+str(top_20)+'\n')
                fout.write('\taddi\t'+rd+', '+rd+', '+str(under_12)+'\n')
                li_num += 1
            else:
                rd = ''
                for j in range(4, len(Insts[i])):
                    if Insts[i][j] != ',':
                        rd += Insts[i][j]
                    else:
                        break
                x = int(Li_Imm[li_num])
                top_20 = x >> 12
                under_12 = x & 0b111111111111
                fout.write('\tlui\t'+rd+', '+str(top_20)+'\n')
                fout.write('\taddi\t'+rd+', '+rd+', '+str(under_12)+'\n')
                li_num += 1
        else:
            if Insts[i][1:7] == 'fcvt.w' or Insts[i][1:7] == 'fcvt.s':
                if Insts[i][len(Insts[i])-4:len(Insts[i])-1] == 'rdn':
                    new_inst = Insts[i][0:9]+'.rdn'+Insts[i][9:len(Insts[i])-6]+'\n'
                    fout.write(new_inst)
                else:
                    fout.write(Insts[i])
            elif Insts[i][1:4] in JMP_Inst and Insts[i][1:5] != 'jalr':
                cnt = 0
                const = ''
                if Insts[i][1:4] == 'jal':
                    for j in range(len(Insts[i])):
                        if cnt != 1:
                            if Insts[i][j] == ',':
                                cnt += 1
                        else:
                            if Insts[i][j] != ' ':
                                const += Insts[i][j]
                else:
                    for j in range(len(Insts[i])):
                        if cnt != 2:
                            if Insts[i][j] == ',':
                                cnt += 1
                        else:
                            if Insts[i][j] != ' ':
                                const += Insts[i][j]
                if re.match('-*\d', const):
                    new_inst = Insts[i][0:4]+'_i'+Insts[i][4:]
                    fout.write(new_inst)
                else:
                    fout.write(Insts[i])
            elif Insts[i] == '.section\t.data\n':
                break
            else:
                fout.write(Insts[i])
