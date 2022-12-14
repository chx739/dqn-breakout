#!/bin/bash
if [ -d models ]; then
    read -p "Would remove the existing models/ dir. Proceed on? [y/n] " ins
    if [[ ${ins} == "y" ]]; then
        rm -r models
    else
        exit
    fi
fi

if [ -z ${CUDA_VISIBLE_DEVICES} ]; then
    export CUDA_VISIBLE_DEVICES="2"
fi

python main.py