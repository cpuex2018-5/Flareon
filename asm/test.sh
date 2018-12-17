./main min-caml-asm/gcd.s
./main min-caml-asm/fib.s
./main min-caml-asm/ack.s
./main min-caml-asm/mandelbrot.s
./main -d min-caml-asm/minrt.s
./../../eevee/simulator/eevee_sim -f min-caml-asm/gcd.bin
cat output.ppm > out
./../../eevee/simulator/eevee_sim -f min-caml-asm/fib.bin
cat output.ppm >> out
./../../eevee/simulator/eevee_sim -f min-caml-asm/ack.bin
cat output.ppm >> out
