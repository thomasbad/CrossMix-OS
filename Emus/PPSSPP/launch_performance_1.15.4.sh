#!/bin/sh
echo $0 $*
progdir=`dirname "$0"`
progdir154=$progdir/PPSSPP_1.15.4
cd $progdir154
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$progdir154

echo "=============================================="
echo "==================== PPSSPP  ================="
echo "=============================================="

#./cpufreq.sh
echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 1416000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq

export HOME=$progdir154
#export SDL_AUDIODRIVER=dsp   //disable 20231031 for sound suspend issue
./PPSSPPSDL "$*"