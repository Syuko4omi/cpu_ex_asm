import sys
import re

Label = []
Insts = []
Li_Imm = []
pc_divided_by_four = 0
li_num = 0
section_num = 0 #0:text, 1:data
JMP_Inst = ['beq', 'bne', 'blt', 'bge', 'jal']

def parse(s):   #命令をオペコードとオペランド単位に分解
    L = []      #s = \taddi\ta0, a0,1\n : L = [addi, a0, a0, 1]
    buf = ''
    for i in range(len(s)):
        if s[i] == '\n':
            L.append(buf)
            buf = ''
            break
        else:
            if re.match('\s', s[i]) or s[i] == ',':
                if len(buf) != 0:
                    L.append(buf)
                    buf = ''
            else:
                buf += s[i]
    if len(buf) != 0:
        L.append(buf)
    return L

def nearest_multpules_of_4096(x):
    h = x//4096
    cand_list = [(h-1)*4096, h*4096, (h+1)*4096]
    L = [[abs(cand_list[0]-x),0], [abs(cand_list[1]-x),1], [abs(cand_list[2]-x),2]]
    L.sort()
    return cand_list[L[0][1]]

with open(sys.argv[1]) as fin,  open(sys.argv[2], "w") as fout:
    while True:
        #stage 1:命令のインデントずれなどを整形, 解決すべきラベルを即値のリストに入れる
        s = fin.readline()
        if s:
            parts_of_inst = parse(s)
            if parts_of_inst != ['']:
                if parts_of_inst[0] == '.section':
                    s = parts_of_inst[0]+'\t'+parts_of_inst[1]+'\n'
                elif parts_of_inst[0] == '.4byte':
                    s = '\t'+parts_of_inst[0]+'\t'+parts_of_inst[1]+'\n'
                elif parts_of_inst[0][len(parts_of_inst[0])-1] == ':':
                    s = parts_of_inst[0]+'\n'
                else:
                    s = '\t'+parts_of_inst[0]+'\t'
                    for k in range(1, len(parts_of_inst)):
                        if k != len(parts_of_inst)-1:
                            s += parts_of_inst[k]+', '
                        else:
                            s += parts_of_inst[k]+'\n'
            else:
                continue
            Insts.append(s)
            len_s = len(s)
            if section_num == 0: #text section
                if s != '\n':
                    if s[len_s-2] == ':':
                        Label.append([s[0:len_s-2], pc_divided_by_four*4])
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
                        pc_divided_by_four += 2
                    elif s == '.section\t.text\n':
                        Insts.pop() #remove
                    elif s == '.section\t.data\n':
                        section_num += 1
                    else:
                        pc_divided_by_four += 1
                else:
                    None
            else: #data section
                if s != '\n':
                    if s[len_s-2] == ':':
                        Label.append([s[0:len_s-2], pc_divided_by_four*4])
                    elif s[0:8] == '\t.4byte\t':
                        imm = int(s[8:], 16)
                        pc_divided_by_four += 1
                else:
                    None
        else: #EOF
            break
    #stage 2:ジャンプ,分岐系の命令の所に即値が入っていた場合、liやla命令を2命令に分解することでズレが発生するのを修正
    for i in range(len(Insts)):
        if Insts[i][1:4] in JMP_Inst and Insts[i][1:5] != 'jalr': #jmp系命令
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
            if re.match('-*\d', const): #自分より前/後にいくつli(la)命令があるのかを数えて、元のpcの移動分に加算
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
                for k in range(1,len(Insts[i])):
                    if Insts[i][len(Insts[i])-k:len(Insts[i])] == const:
                        replace_pos = k
                        break
                Insts[i] = Insts[i][:len(Insts[i])-replace_pos]+str(imm)+'\n'
            else:
                None
    #stage 3:li/la命令を分解,rdnオプションを付与,整形した命令を出力
    for i in range(len(Insts)):
        if Insts[i][1] == 'l' and (Insts[i][2] == 'i' or Insts[i][2] == 'a'):
            flag = False
            temp = 0
            rd = ''
            for j in range(len(Label)):
                if Label[j][0] == Li_Imm[li_num]:
                    flag = True
                    temp = j
                    break
            if flag:
                for j in range(4, len(Insts[i])):
                    if Insts[i][j] != ',':
                        rd += Insts[i][j]
                    else:
                        break
                x = Label[temp][1]
            else:
                for j in range(4, len(Insts[i])):
                    if Insts[i][j] != ',':
                        rd += Insts[i][j]
                    else:
                        break
                x = int(Li_Imm[li_num])
            y = nearest_multpules_of_4096(x)
            top_20 = y >> 12
            under_12 = x-y #this must be in -2048 ~ 2047
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
                if re.match('-*\d', const): #即値命令
                    new_inst = Insts[i][0:4]+'_i'+Insts[i][4:]
                    fout.write(new_inst)
                else:
                    fout.write(Insts[i])
            elif Insts[i] == '.section\t.data\n':
                None
            else:
                fout.write(Insts[i])
