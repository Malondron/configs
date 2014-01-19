#!/bin/bash
# banshee info display script by Skyre <nperalta2014@gmail.com>

case "$1" in

# Now Playing Info

position)
    min=60
    cu=`exec banshee --query-position`
    curr=`expr match "${cu:10}" '\([0-9]*\)'`
    if [ "$curr" != "Error" ]; then
        if [ "$curr" -gt 59 ]; then
            curs=`expr $curr / 60`
            cuss=$[curs * 60]
            cuss=$[curr - cuss]
            if [ "$cuss" -lt 10 ]; then
                echo "$curs":0"$cuss"
            else
                echo "$curs":"$cuss"
            fi
        fi
        if [ "$curr" -lt 60 ]; then
            if [ "$curr" -lt 10 ]; then
                echo 0:0"$curr"
            else
                echo 0:"$curr"
            fi
        fi
    fi
    ;;

duration)
    to=`exec banshee --query-duration`
    tot=`expr match "${to:10}" '\([0-9]*\)'`
    if [ "$tot" != "Error" ]; then
        if [ "$tot" -gt 59 ]; then
            tott=`expr $tot / 60`
            toto=$[tott * 60]
            toto=$[tot - toto]
            if [ "$toto" -lt 10 ]; then
                echo "$tott":0"$toto"
            else
                echo "$tott":"$toto"
            fi
        fi
        if [ "$tot" -lt 60 ]; then
            if [ "$tot" -lt 10 ]; then
                echo 0:0"$tot"
            else
                echo 0:"$tot"
            fi
        fi
    fi
    ;;
    
progress)
    cu=`exec banshee --query-position`
    to=`exec banshee --query-duration`
    curr=`expr match "${cu:10}" '\([0-9]*\)'`
    tot=`expr match "${to:10}" '\([0-9]*\)'`
    if (( "$tot" )); then
        expr "$curr" \* 100  / "$tot"
    fi
    ;;
esac
