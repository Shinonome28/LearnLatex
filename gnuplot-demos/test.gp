# 作图参数中的魔法数字依赖于绘图后端
# 可以用test指令查看这些魔法数字所对应的视觉效果
# 运行此文件生成常规的绘图后端的测试文件

# cairo是一个二维矢量绘图库
# https://cairographics.org/
set terminal pdfcairo
set output "build/pdfcairo-test.pdf"
test

set terminal eps
set output "build/eps-test.eps"
test

set terminal svg
set output "build/svg-test.svg"
test

set terminal epslatex standalone
set output "build/epslatex-test.tex"
test

set terminal png
set output "build/png-test.png"
test