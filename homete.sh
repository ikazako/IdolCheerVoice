#!/bin/bash



if  [ $# -ne 0 ] ; then
    eval "$*"

    if [ $? -eq 0 ] ; then    #返り値が0(=コンパイル成功)のとき

        aplay ./music/CD8000.wav  #褒め言葉再生
   
    else #返り値が0以外(=コンパイル失敗)のとき
    
        aplay ./music/CD8000.wav  #お叱り再生
    fi

else
    echo "エラー：コンパイラと合わせて入力してください"
fi
