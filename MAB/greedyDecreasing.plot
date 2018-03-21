stats 'statsUser_historyGreedyD_.txt' nooutput
N = STATS_records
bin(x, s) = s*int(x/s)

set zeroaxis
set style data points
set key box top left

set xrange[-0.05:1]
set yrange[0:100]


set xlabel "Individual Accuracy"
set ylabel "Distribution (%)"



set title "Inidividual Accuracy Distribution on Control Dataset - e-Greedy (e decreasing) "
set boxwidth 0.05

plot "statsUser_historyGreedyD_.txt" u (bin($2,0.05)):(100/N) smooth freq t 'Individual Accuracy e-Greedy (e decreasing)' w boxes  lc rgb"blue" lw 3, \
     "" u 2:(100/N) smooth cumul t 'Cumulative Individual Accuracy e-Greedy (e decreasing)' lc rgb"blue" lw 3

pause -1 "Press <enter> to close"



reset

