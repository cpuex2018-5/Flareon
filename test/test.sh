#!/bin/bash

# compile & assemble everything
./../compiler/min-caml ../compiler/test/{gcd.ml,fib.ml,ack.ml} 2> /dev/null > /dev/null
./../compiler/min-caml ../compiler/shootout/mandelbrot.ml 2> /dev/null > /dev/null
./../compiler/min-caml ../compiler/raytracer/minrt.ml 2> /dev/null > /dev/null
./../asm/main min-caml-asm/{gcd.s,fib.s,ack.s,mandelbrot.s}
./../asm/main -d min-caml-asm/minrt.s > min-caml-asm/minrt.asm

./../simulator/eevee_sim -f min-caml-asm/gcd.bin > /dev/null
echo "gcd (expected: 2700)   :" `cat output.ppm`
./../simulator/eevee_sim -f min-caml-asm/fib.bin > /dev/null
echo "fib (expected: 832040) :" `cat output.ppm`
./../simulator/eevee_sim -f min-caml-asm/ack.bin > /dev/null
echo "ack (expected: 23)     :" `cat output.ppm`
./../simulator/eevee_sim -f min-caml-asm/mandelbrot.bin > /dev/null
diff mandelbrot.ppm output.ppm > /dev/null 2>&1
if [ $? -eq 1 ]; then
    echo "mandelbrot             : NG (results were different)"
else
    echo "mandelbrot             : OK (results were identical)"
fi
