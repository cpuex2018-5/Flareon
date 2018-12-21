#!/bin/bash
ln -sf ../compiler/flareon/{libcommon.S,libmincaml.S,libcontest.S} .
mkdir -p min-caml-asm
cd min-caml-asm
ln -sf ../../compiler/test/{gcd.s,fib.s,ack.s} .
ln -sf ../../compiler/shootout/mandelbrot.s .
ln -sf ../../compiler/raytracer/minrt.s .
ln -sf ../../compiler/raytracer/globals.s .
cd ..
