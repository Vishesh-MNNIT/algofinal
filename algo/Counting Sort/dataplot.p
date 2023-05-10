   set autoscale                        # scale axes automatically
      unset log                              # remove any log-scaling
      unset label                            # remove any previous labels
      set xtic auto                          # set xtics automatically
      set ytic auto                          # set ytics automatically
	  set tics font "Helvetica,10"
      set title "Counting Sort"
      set xlabel "Input Data Size"
      set ylabel "Time"
      #set key 0.01,100
      #set label "Yield Point" at 0.003,260
      #set arrow from 0.0028,250 to 0.003,280
      set xr [1000:100000]
      set yr [0.00000:0.1]
      plot  "count.txt" using 1:2 title 'Average Case' with linespoints, \
            "countb.txt" using 1:2 title 'Best case' with linespoints, \
            "countw.txt" using 1:2 title 'Worst case' with linespoints, \
