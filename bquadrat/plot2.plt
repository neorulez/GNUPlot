#Beschriftungen
set xlabel "\n B^{2} in T^{2}"
set ylabel "r^{2} in cm^{2}"
set xrange [0.000001:0.000023]
set yrange [0:32]
set xtics ("\n 2.43*10^{-6}" 2.43E-006,"    5.46*10^{-6}" 5.46E-006,"\n 9.71*10^{-6}" 9.71E-006,"1.52*10^{-5}" 1.52E-005,"\n 2.18*10^{-5}" 2.18E-005)
set nokey
set grid
set pointsize 2
set sample 10000

#Linienstile einstellen
set style line 1 lt 1 linecolor 1 lw 2
set style line 2 lt 1 linecolor 2 lw 2
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
plot "werte2.dat" using 1:2 title "100V" with points pt 3 lt 1
replot "werte2.dat" using 1:3 title "120V" with points
replot "werte2.dat" using 1:4 title "140V" with points
replot "werte2.dat" using 1:5 title "160V" with points pt 2 lt 7
replot "werte2.dat" using 1:6 title "180V" with points pt 3 lt 8
replot "werte2.dat" using 1:7 title "200V" with points pt 2 lt 1
replot "werte2.dat" using 1:8 title "220V" with points pt 3 lt 2
replot "werte2.dat" using 1:9 title "240V" with points pt 2 lt 3
replot "werte2.dat" using 1:10 title "260V" with points pt 3 lt 7
replot "werte2.dat" using 1:11 title "280V" with points pt 2 lt 8

#regression
f1(x)=a*(1/x)+b
fit f1(x) "werte2.dat" using 1:2 via a,b
replot f1(x) title "Regressionskurve 100V" with lines ls 1
f2(x)=c*(1/x)+d
fit f2(x) "werte2.dat" using 1:3 via c,d
replot f2(x) title "Regressionskurve 120V" with lines ls 2
f3(x)=e*(1/x)+f
fit f3(x) "werte2.dat" using 1:4 via e,f
replot f3(x) title "Regressionskurve 140V" with lines ls 3
f4(x)=g*(1/x)+h
fit f4(x) "werte2.dat" using 1:5 via g,h
replot f4(x) title "Regressionskurve 160V" with lines ls 4
f5(x)=i*(1/x)+j
fit f5(x) "werte2.dat" using 1:6 via i,j
replot f5(x) title "Regressionskurve 180V" with lines ls 5
f6(x)=k*(1/x)+l
fit f6(x) "werte2.dat" using 1:7 via k,l
replot f6(x) title "Regressionskurve 200V" with lines ls 6
f7(x)=m*(1/x)+n
fit f7(x) "werte2.dat" using 1:8 via m,n
replot f7(x) title "Regressionskurve 220V" with lines ls 7
f8(x)=o*(1/x)+p
fit f8(x) "werte2.dat" using 1:9 via o,p
replot f8(x) title "Regressionskurve 240V" with lines ls 8
f9(x)=q*(1/x)+r
fit f9(x) "werte2.dat" using 1:10 via q,r
replot f9(x) title "Regressionskurve 260V" with lines ls 9
f10(x)=s*(1/x)+t
fit f10(x) "werte2.dat" using 1:11 via s,t
replot f10(x) title "Regressionskurve 280V" with lines ls 10

#abspeichern
set terminal post landscape color enhan
set out "werte2_quer.ps"
replot
set out
set terminal png
set output "diagramm2.png"
replot
unset output
