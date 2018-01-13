#! /bin/bash

count=`ps -ef | grep "sslocal" | grep -v "grep" |wc -l`

echo $count

if [ $count -eq 1 ]; then
ps -eaf | grep "sslocal" | grep -v "grep" | awk '{print $2}' | xargs kill -9
sleep 2
nohup sslocal -c $HOME/shadowsocks.json &
echo "restart"
fi

