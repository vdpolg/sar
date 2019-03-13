#!/bin/bash
# avgload
da=`date +%d`
LANG=C
sar -f /var/log/sa/sa$da -q | grep -v "Average:" | awk 'NR>3 {print $0}' > /tmp/avgload
# run
gnuplot avgload.plt

# memory
sar -f /var/log/sa/sa$da -r | grep -v "Average:" | awk 'NR>3 {print $0}' > /tmp/memory
# run
gnuplot memory.plt
