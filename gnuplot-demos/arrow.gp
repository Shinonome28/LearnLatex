set term pdfcairo
set output "build/arrow.pdf"

sinc(x) = sin(pi*x) / (pi*x)
set xlabel 'X'
set ylabel 'Y'
set yrange [-0.4:1.2]
set title "sinc(x) 函数"
unset key

# 默认位置使用第一坐标
# 15，60是一组相对标准的箭头角度
set arrow 1 from 2,1.05 to 0.3,1 filled size 0.5,15,60
set label 2 at 0,1 point pt 7 ps 1.0 lc rgb "#F87217"
set label 3 at 2.1,1.05 "最大值在（0，1）"

set samples 500
plot sinc(x) lw 2