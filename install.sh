#!/bin/bash

TIM=`date '+%F_%T'`
BAK=backup_$TIM
SRC=`pwd`

echo
echo "Installing Conky config..."
cd ~
if [ -e .conkyrc ] ; then
    echo "  renamimg original .conkyrc to .conkyrc.$BAK"
    mv .conkyrc .conkyrc.$BAK
fi
echo "  copying new file ..."
cp -r $SRC/conkyrc ./.conkyrc
echo "done."
echo
