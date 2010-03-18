# for GNUPLOT4.0
#set term post eps color enh "Times-BoldItalic" 30
set term post eps enh dl 3 rounded "Helvetica" 30
#set term post eps
#set term post
set output "gp42.eps"
set parametric
set pointsize 1.8
set samples 16
set trange [0:15]
set xrange [0:15]
set yrange [0:15]
set nokey
LW=4
set style line 1  lw LW
set style line 2  lw LW
set style line 3  lw LW
set style line 4  lw LW
set style line 5  lw LW
set style line 6  lw LW
set style line 7  lw LW
set style line 8  lw LW
set style line 9  lw LW
set style line 10 lw LW
set style line 11 lw LW
set style line 12 lw LW
set style line 13 lw LW
set style line 14 lw LW
set style line 15 lw LW
set title "{/Symbol abcdefghijklmnopqrstuvwxyz   \245}"
set ylabel "d^2{/Symbol s}/dp/d{/Symbol W} (mb/(MeV/c)/str)" 1,0
set xlabel "K^+ Momentum (GeV/c)"
plot \
	 t,1	w l ls 1\
	,t,2	w l ls 2\
	,t,3	w l ls 3\
	,t,4	w l ls 4\
	,t,5	w l ls 5\
	,t,6	w l ls 6\
	,t,7	w l ls 7\
	,t,8	w l ls 8\
	,t,9	w l ls 9\
	,t,10	w l ls 10\
	,t,11	w l ls 11\
	,t,12	w l ls 12\
	,t,13	w l ls 13\
	,t,14	w l ls 14\
	,1,t	w p 1 1\
	,2,t	w p 1 2\
	,3,t	w p 1 3\
	,4,t	w p 1 4\
	,5,t	w p 1 5\
	,6,t	w p 1 6\
	,7,t	w p 1 7\
	,8,t	w p 1 8\
	,9,t	w p 1 9\
	,10,t	w p 1 10\
	,11,t	w p 1 11\
	,12,t	w p 1 12\
	,13,t	w p 1 13\
	,14,t	w p 1 14\
	,15,t	w p 1 15\

