#!/bin/bash

read filename
python preprocess.py $filename preprocessed.s
./asm preprocessed.s > output.s
rm preprocessed.s
python txt_to_bin.py output.s output.bin
