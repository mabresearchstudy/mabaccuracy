stats 'statsUser_historySWLinUCB01_.txt' nooutput
N = STATS_records
bin(x, s) = s*int(x/s)

set zeroaxis
set style data points
set key box top left

set xrange[-0.05:1]
set yrange[0:100]

set xlabel "Individual Accuracy"
set ylabel "Distribution (%)"


set title "Inidividual Accuracy Distribution on Control Dataset Full Features- SW-LinUCB delta=0.1  "
set boxwidth 0.05

plot "statsUser_historySWLinUCB01_.txt" u (bin($2,0.05)):(100/N) smooth freq t 'Individual Accuracy SW-LinUCB delta=0.1' w boxes  lc rgb"blue" lw 3, \
     "" u 2:(100/N) smooth cumul t 'Cumulative Individual Accuracy SW-LinUCB delta=0.1' lc rgb"blue" lw 3

pause -1 "Press <enter> to close"



reset

