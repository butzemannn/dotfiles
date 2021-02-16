#$/bin/bash

CURR_DIR=$(pwd)

FILES=$(ls -a | grep "^\." | sed -e "s-^-$CURR_DIR/-" | sed ':a;N;$!ba;s/\n/ /g' | sed "s-$CURR_DIR/.git--g")

ln -s $FILES $HOME/
