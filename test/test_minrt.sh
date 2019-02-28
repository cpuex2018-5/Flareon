#!/bin/bash

echo "compiling ../compiler/raytracer/minrt.ml (may take some time)"
./../compiler/min-caml ../compiler/raytracer/minrt.ml 2> /dev/null > /dev/null

echo "assembling min-caml-asm/minrt.s"
./../asm/main -d min-caml-asm/minrt.s > min-caml-asm/minrt.asm

echo "running simulator (may take some time)"
./../simulator/eevee_sim -f min-caml-asm/minrt.bin > /dev/null

diff minrt.ppm output.ppm > /dev/null 2>&1
if [ $? -eq 1 ]; then
    echo "minrt                  : NG (results were different)"
else
    echo "minrt                  : OK (results were identical)"
fi
