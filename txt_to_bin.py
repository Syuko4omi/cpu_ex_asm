import sys

with open(sys.argv[1]) as fin,  open(sys.argv[2], "wb") as fout:
    while True:
        s = fin.readline()
        if s:
            if s != '\n':
                fout.write(int(s,16).to_bytes(len(s)//2,"little"))
        else:
            break
