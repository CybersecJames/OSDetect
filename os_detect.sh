#! /bin/bash

# OSDetect
# Developer: James Montrief
# Description: OSDect will distinguish between MS windows, MacOS, and Linux operating systems.

clear
function OSDetect {
    # detect OS
    if type -t wevutil &> /dev/null
    then OS=MS_Windows
    
    elif type -t scutil &> /dev/null
    then OS=MacOS
    
    else OS=Linux
    fi

    # set variables to display
    kernelRelease=$(uname -r)
    arch=$(lscpu | grep 'Architecture' |awk '{print $2}' | head -n 1)
    name=$(hostname)

    # display
    echo Report:
    echo ------------------------------------------------------------
    echo Hostname: "$name"
    echo OS: "$OS"
    echo Kernel: "${kernelRelease}"
    echo Architecture: "${arch}"
    echo ------------------------------------------------------------
    }

OSDetect
