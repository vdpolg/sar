set xdata time                    #定義x軸數據格式
set timefmt '%H:%M:%S'            #定義x軸單位格式
set xlabel 'Time'                 #定義顯示標籤
set format x '%H:%M:%S'            
set terminal png truecolor  size 1600,900
set output "/tmp/avgload.png"
set ylabel 'Load Avg'
set yrange [0:]
plot '/tmp/avgload' using 1:4 title '1min' with lines,'/tmp/avgload' using 1:5 title    '5min' with lines,'/tmp/avgload' using 1:6 title '15min' with lines

