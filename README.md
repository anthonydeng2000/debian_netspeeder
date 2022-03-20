# 中文版

1、多倍发包工具一键安装 支持arm/amd64架构 (x64/arm)

2、系统要求
   Debian7+ 32 & 64 bit

3、安装 (请一步一步执行)

      wget --no-check-certificate https://raw.githubusercontent.com/zhucaidan/debian_netspeeder/master/debian_netspeeder.sh
   再执行：
   
      chmod a+x debian_netspeeder.sh
   再执行：
   
      bash debian_netspeeder.sh

4、常用命令

   多倍发包工具在运行吗？
   
      ps aux|grep net_speeder|grep -v grep

   停止多倍发包工具。
   
      killall net_speeder

   开启多倍发包工具。（OpenVZ环境）
   
      nohup /root/net_speeder venet0 "ip" >/dev/null 2>&1 &
   
5、双倍/四倍发包
   每执行一次多两倍。
   
      nohup /root/net_speeder venet0 "ip" >/dev/null 2>&1 &

# English version

1、Net-speeder Debian/Ubuntu Oneclick Install (X64/Arm)

2、Requirements
   Debian7+ 32 & 64 bit

3、Install (One by one execute)

      wget --no-check-certificate https://raw.githubusercontent.com/zhucaidan/debian_netspeeder/master/debian_netspeeder.sh
   Then:
   
      chmod a+x debian_netspeeder.sh
   Then:
   
      bash debian_netspeeder.sh

4、Commend

   Is net-speeder running?
   
      ps aux|grep net_speeder|grep -v grep

   Stop net-speeder.
   
      killall net_speeder

   Start net-speeder（OpenVZ environment）
   
      nohup /root/net_speeder venet0 "ip" >/dev/null 2>&1 &
   
5、Double
   You can enable send quadruple packet by this way:
   
      nohup /root/net_speeder venet0 "ip" >/dev/null 2>&1 &
