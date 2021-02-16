#$/bin/bash

CURR_DIR=$(pwd)

FILES=$(ls -a | grep "^\." | sed ':a;N;$!ba;s/\n/ /g' | sed 's/.git//g')

ln -s $FILES $HOME
