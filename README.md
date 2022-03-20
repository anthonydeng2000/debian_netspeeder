# debian_netspeeder

1、Net-speeder Debian/Ubuntu Oneclick Install (X64/Arm)

2、Requirements
   Debian7+ 32 & 64 bit

3、Install (One by one execute)
   wget --no-check-certificate https://raw.githubusercontent.com/zhucaidan/debian_netspeeder/master/debian_netspeeder.sh

   chmod a+x debian_netspeeder.sh

   bash debian_netspeeder.sh

4、Commend
   Is net-speeder running?
   ps aux|grep net_speeder|grep -v grep

   Stop net-speeder
   killall net_speeder

   Start net-speeder（OpenVZ environment）
   nohup /root/net_speeder venet0 "ip" >/dev/null 2>&1 &
   
5、Double
   You can enable send quadruple packet by this way:
   nohup /root/net_speeder venet0 "ip" >/dev/null 2>&1 &
