#!/bin/bash
ln -sf ../compiler/flareon/{libcommon.S,libmincaml.S,libcontest.S} .
mkdir -p min-caml-asm
ln -sf ../compiler/test/gcd.s min-caml-asm/gcd.s
ln -sf ../compiler/test/fib.s min-caml-asm/fib.s
ln -sf ../compiler/test/ack.s min-caml-asm/ack.s
ln -sf ../compiler/shootout/mandelbrot.s min-caml-asm/mandelbrot.s
ln -sf ../compiler/raytracer/minrt.s min-caml-asm/minrt.s
