#!/bin/bash

read filename
./asm $filename > output.txt
python txt_to_bin.py output.txt output.bin
