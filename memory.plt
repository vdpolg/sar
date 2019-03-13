set xdata time                    #定義x軸數據格式
set timefmt '%H:%M:%S'            #定義x軸單位格式
set xlabel 'Time'                 #定義顯示標籤
set format x '%H:%M:%S'
set terminal png truecolor  size 1024,768
set output "/tmp/memory.png"
set ylabel 'Load Avg'
set yrange [0:]
plot '/tmp/memory' using 1:4 title 'memused' with lines,'/tmp/memory' using 1:8 title '%commit' with lines
