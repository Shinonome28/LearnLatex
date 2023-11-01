set terminal pdfcairo font "simsun, 8"
set output "build/dual-axis.pdf"
set xlabel '月份'
set ylabel '降水量（毫米）'
set y2label "气温（摄氏度）"
set title "广州市月平均气温降水量其气温"
set xrange [0.5:12.5]
set xtics 1,1,12
set yrange [0:400]
set ytics 40
set y2range [0:40]
set y2tics 4
set grid xtics y2tics
plot "example-data/gz-rain-temperature-2022.dat" u 1:2 w lp pt 5 lc rgbcolor "#2B60DE" axis x1y1 t "降水量",\
    "example-data/gz-rain-temperature-2022.dat" u 1:3 w lp pt 5 lc rgbcolor "#F62817" axis x1y2 t "气温" 