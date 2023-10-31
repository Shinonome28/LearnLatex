set terminal pdfcairo enhanced
set output "build/enhance-text.pdf"
set xlabel 'X'
set ylabel 'Y'
set xrange [0:10]
set xtics 0,1,10
unset key
set title "f(x) = {/Symbol=16 \326}~{x^@3}{1.1{/Symbol=16 \276}}&{aa} 函数图像"
plot sqrt(x**3)