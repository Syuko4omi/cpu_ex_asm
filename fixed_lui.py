import sys
import re

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

with open(sys.argv[1]) as fin,  open(sys.argv[2], "w") as fout:
    fout.write('#immediate of lui is as 4096 times as its original.\n\n')
    while True:
        s = fin.readline()
        if s:
            if s[1:4] == 'lui':
                L = parse(s)
                temp = int(L[len(L)-1])*4096
                L[len(L)-1] = str(temp)
                buf = '\t'+L[0]+'\t'+L[1]+', '+L[2]+'\n'
                fout.write(buf)
            else:
                fout.write(s)
        else:
            break
