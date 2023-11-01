set term pdfcairo enhanced
set output "build/tune-key.pdf"

# 利用递推公式求二阶贝塞尔函数
besj2(x) = besj1(x)*2/x - besj0(x)

set xrange [0:20]
set xtics 2
set xlabel 'X'
set ylabel 'Y'
set title "第一类贝塞尔函数"
set grid
set style line 1 lw 2 lc rgb "#F62217"
set style line 2 lw 2 lc rgb "#D4A017"
set style line 3 lw 2 lc rgb "#2B60DE"

set key box
set key center at 10,0.7
set key reverse
set key width 1
set key Left
set key spacing 1.2
set key samplen 4

plot besj0(x) ls 1 t "J_0(x)", besj1(x) ls 2 t "J_1(x)", besj2(x) ls 3 t "J_2(x)"