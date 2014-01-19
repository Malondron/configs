#! /bin/bash
res=$(curl -Is http://www.equaonline.com/temp/ | head -n 1 | grep '200') 
if [ "$res" == "" ]; then
    echo "\${color red}Down"
else
    echo "\${color green}Up" 
fi
