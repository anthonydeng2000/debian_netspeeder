#!/bin/bash
# Check if user is root
if [ $(id -u) != "0" ]; then
    printf "错误: 必须在root用户执行此脚本!\n"
    exit 1
fi

echo "=========================================================================\n"
printf "Version 0.2 \n"

apt-get update

apt-get install libnet1 libpcap0.8 
apt-get install libnet1-dev libpcap0.8-dev
apt-get install gcc

cd ~

wget --no-check-certificate https://github.com/snooda/net-speeder/raw/master/net_speeder.c
wget --no-check-certificate https://github.com/snooda/net-speeder/raw/master/build.sh

chmod +x build.sh

if [ -f /proc/user_beancounters ] || [ -d /proc/bc ]; then
    sh build.sh -DCOOKED
    INTERFACE=venet0
else
    sh build.sh
    INTERFACE=eth0
fi

nohup /root/net_speeder $INTERFACE "ip" >/dev/null 2>&1 &

sed -i 's/exit\ 0/#exit\ 0/' /etc/rc.local
echo 'nohup /root/net_speeder $INTERFACE "ip" >/dev/null 2>&1 &' >> /etc/rc.local  
echo 'nohup /root/net_speeder $INTERFACE "ip" >/dev/null 2>&1 &' >> /etc/rc.local  
echo exit 0 >> /etc/rc.local

echo "=========================================================================\n"
echo "Net-speeder has been installed!"

