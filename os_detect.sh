#! /bin/bash

# OSDetect
# Developer: James Montrief
# Description: OSDect will distinguish between MS windows, MacOS, and Linux operating systems.

clear

if type -t wevutil &> /dev/null
then 
    OS=MS_Windows
elif type -t scutil &> /dev/null
then
    OS=MacOS
else
    OS=Linux
fi

kernelRelease=$(uname -r)


arch=$(lscpu | grep 'Architecture' |awk '{print $2}' | head -n 1)

echo ------------------------------------------------------------
echo Operating system:  $OS 
echo Kernel: "${kernelRelease}"
echo Architecture: "${arch}"
echo ------------------------------------------------------------