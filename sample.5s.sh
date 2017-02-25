#!/bin/bash

PROCESS_NAME=監視するプロセス名
FONT_SIZE=14
FONT_COLOR_DEAD=#fe0000
FONT_COLOR_ALIVE=#ffffff

count=`ps -ef | grep $PROCESS_NAME | grep -v grep | wc -l`
    if [ $count = 0 ]; then
        # プロセスが動いていない場合（countが0の場合）
        echo "🅢| size=$FONT_SIZE color=$FONT_COLOR_DEAD"
        echo "---"
        echo "プロセス停止中"
    else
        # プロセスが動いている場合
        echo "🅢| size=$FONT_SIZE color=$FONT_COLOR_ALIVE"
        echo "---"
        echo "プロセス稼働中"
    fi
    # 以下はメニュー例

	# ターミナル実行 パラメーターは分ける
    echo "ターミナルを実行する | bash=/usr/bin/pkill param1=-KILL param2=-f param3=停止するプロセス名 terminal=false refresh=true"
    # クリックでリンクを開く
	echo "リンクの場合 | href=http://www.yahoo.co.jp/"
    # 区切り線を入れる
	echo "---"
    # フォントサイズ
    echo "文字サイズ | size=22"
    # フォントサイズ
	echo "文字色 | color=#fe0000"
    # 階層メニュー
	echo "階層メニュー"
	echo "--Menu 1"
	echo "--Menu 2"
	echo "--Menu 3"
	echo "----Menu 3-1"
	echo "----Menu 3-2"
	# 再読み込み
    echo "再読み込み | refresh=true"
