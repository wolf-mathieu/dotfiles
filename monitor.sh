  RAM=$(free | awk "FNR == 2 { printf \"x = %s / %s * 100; scale = 0; x / 1\\n\", \$3, \$2 }" | bc -ql)
  CPU=$(printf "100 - $(vmstat 1 2 | awk "FNR == 4 { print \$15 }")\n" | bc -ql)
  printf " $RAM%% "

