import re

def parse(s):
    L = []
    buf = ''
    for i in range(len(s)):
        if s[i] == '\n':
            L.append(buf)
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
    if len(L) != 0:
        return L
while(True):
    inp = input()
    M = parse(inp)
    print(M)
