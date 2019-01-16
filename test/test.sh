./../asm/main min-caml-asm/gcd.s
./../asm/main min-caml-asm/fib.s
./../asm/main min-caml-asm/ack.s
./../asm/main min-caml-asm/mandelbrot.s
./../asm/main -d min-caml-asm/minrt.s
./../simulator/eevee_sim -f min-caml-asm/gcd.bin
echo "gcd (expected: 2700)   :" `cat output.ppm` > test_result.txt
./../simulator/eevee_sim -f min-caml-asm/fib.bin
echo "fib (expected: 832040) :" `cat output.ppm` >> test_result.txt
./../simulator/eevee_sim -f min-caml-asm/ack.bin
echo "ack (expected: 23)     :" `cat output.ppm` >> test_result.txt
./../simulator/eevee_sim -f min-caml-asm/mandelbrot.bin
diff mandelbrot.ppm output.ppm > /dev/null 2>&1
if [ $? -eq 1 ]; then
    echo "mandelbrot             : NG (results were different)" >> test_result.txt
else
    echo "mandelbrot             : OK (results were identical)" >> test_result.txt
fi
echo "$(tput setaf 2)test results are emitted in 'test_result.txt'. ✔$(tput sgr0)"
