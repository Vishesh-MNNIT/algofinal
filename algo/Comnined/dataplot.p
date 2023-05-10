   set autoscale                        # scale axes automatically
      unset log                              # remove any log-scaling
      unset label                            # remove any previous labels
      set xtic auto                          # set xtics automatically
      set ytic auto                          # set ytics automatically
	  set tics font "Helvetica,10"
      set title "Comparison Of Sorting Algorithms"
      set xlabel "Input Data Size"
      set ylabel "Time"
      #set key 0.01,100
      #set label "Yield Point" at 0.003,260
      #set arrow from 0.0028,250 to 0.003,280
      set xr [1000:100000]
      set yr [0.00000:0.2]
      plot  "bubble.txt" using 1:2 title 'Bubble' with linespoints, \
            "selection.txt" using 1:2 title 'Selection Sort' with linespoints, \
            "insertion.txt" using 1:2 title 'Insertion Sort' with linespoints, \
            "heap.txt" using 1:2 title 'Heap Sort' with linespoints, \
            "merge.txt" using 1:2 title 'Merge Sort' with linespoints, \
            "shell.txt" using 1:2 title 'Shell Sort' with linespoints, \
