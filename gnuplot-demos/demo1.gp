set terminal pdfcairo font "simsun,12"
set output 'build/demo1.pdf'

set xlabel '月份'
set ylabel '降水量（毫米）'
set title "广州、上海平均月降水量（2022）"
set xrange [0.5:12.5]
set xtics 1,1,12
# shortcuts:
# w  with
# lp linespoints
# lc linecolor
# lw linewidth
# pt pointtype
# ps pointsize
plot "example-data/gz-rain-2022.dat" u 1:2 w lp lc 3 lw 2 pt 7 ps 0.5 title "广州",\
    "example-data/gz-rain-2022.dat" u 1:3 w lp lc 4 lw 2 pt 7 ps 0.5 title "上海"

set terminal eps
set output "build/demo1.eps"
set xlabel 'Month'
set ylabel 'Precipitation (mm)'
set title "Average Precipitation in Guangzhou and Shanghai 2022"
plot "example-data/gz-rain-2022.dat" u 1:2 w lp lc 3 lw 2 pt 7 ps 0.5 title "Guangzhou",\
    "example-data/gz-rain-2022.dat" u 1:3 w lp lc 4 lw 2 pt 7 ps 0.5 title "Shanghai"