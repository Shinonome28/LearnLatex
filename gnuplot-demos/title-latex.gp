set xlabel 'X'
set ylabel 'Y'
set title 'Error Function $\displaystyle \mathrm{erf}(x) = \frac{2}{\sqrt{\pi}} \int_0^x e^{-t^2}\,\mathrm{d}t$'
set xrange [-4:4]
set yrange [-1.1:1.1]
unset key
set term epslatex standalone lw 2 color 11
set output "build/title-latex.tex"
plot erf(x) lw 2
