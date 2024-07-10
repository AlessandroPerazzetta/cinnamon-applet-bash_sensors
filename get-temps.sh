#!/bin/bash
function max() {
  local m p;
  m=0;
  while [ ! -z $1 ] ; do
    p=$1
    if ((p > m)) ; then m=$p ; fi
    shift;
  done
  echo $m;
}

gpu=$(\
  /usr/bin/nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader
);
gpu="G: $gpu";

cpuarray=($(\
  /usr/bin/sensors |\
  /bin/sed -n '/Core/{s/.*: *//;s/\+//;s/\..*//;p}'\
));
cpus="C: $(max ${cpuarray[*]})"

echo "$gpu $cpus"
