#Beschriftungen
set term latex
set xlabel "t in s"
set ylabel "P in W"
set xrange [0:180]
set yrange [0:1350]
#set xtics ("\n 2.43*10^{-6}" 2.43E-006,"    5.46*10^{-6}" 5.46E-006,"\n 9.71*10^{-6}" 9.71E-006,"1.52*10^{-5}" 1.52E-005,"\n 2.18*10^{-5}" 2.18E-005)
set key outside
set grid
set pointsize 0
set sample 10000

#Linienstile einstellen
set style line 1 lt 1 linecolor rgb 'blue' lw 2
set style line 2 lt 1 linecolor rgb 'orange' lw 2
set style line 3 lt 1 linecolor 3 lw 2
set style line 4 lt 1 linecolor 7 lw 2
set style line 5 lt 1 linecolor 8 lw 2
set style line 6 lt 2 linecolor 1 lw 2
set style line 7 lt 2 linecolor 2 lw 2
set style line 8 lt 2 linecolor 3 lw 2
set style line 9 lt 2 linecolor 7 lw 2
set style line 10 lt 2 linecolor 8 lw 2

#Punktstile einstellen
#set style points 1 pt 1 lt 1

#plot
plot "werte.dat" using 1:2 title "without load" with points pt 3 lt 1
replot "werte.dat" using 1:3 title "with load" with points pt 2 lt 7


#regression
f1(x)=a*x+b
fit f1(x) "werte.dat" using 1:2 via a,b
replot f1(x) title "regression without load" with lines ls 1
f2(x)=c*x+d
fit f2(x) "werte.dat" using 1:3 via c,d
replot f2(x) title "regression with load" with lines ls 2


#abspeichern
set size 1.5,1.5
set terminal post landscape color enhanced
set out "diagramm.ps"
replot
set out
set terminal png
set output "diagramm.png"
replot
set terminal postscript eps size 4,2 color
set out "diagramm.eps"
replot
unset output
