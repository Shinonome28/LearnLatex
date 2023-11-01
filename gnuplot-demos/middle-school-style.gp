# 演示如何画出中学阶段风格的图

set term pdfcairo enhanced
set output "build/middle-school-style.pdf"

gauss(x) = exp(-pi*x*x)

set title "函数 e^{-πx^2}" offset 12,-5
set xrange [-3:3]
set yrange [-0.2:1.2]
unset key
unset border
# 原点在0处的坐标轴
set zeroaxis lt -1 lw 2
set xtics axis -2,1,2 offset 0.4,0
set ytics axis 0,1,1 offset 0,0.4
set arrow 1 from 2.0,0 to 3.2,0 filled size 0.2,15,60 lw 2
set arrow 2 from 0,1 to 0,1.22 filled size 0.2,15,60 lw 2
set rmargin 4
set label 3 "X" at 3.0,-0.1
set label 4 "Y" at -0.3,1.2
plot gauss(x) lw 3