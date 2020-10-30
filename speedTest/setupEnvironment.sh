# 安装测速工具
echo 'y' | yum install iperf3
echo 'y' | yum install git
# 下载替换拥塞控制协议的脚本
wget -N --no-check-certificate "https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh"
chmod +x tcp.sh

# 锐速脚本
wget -N --no-check-certificate "https://github.com/91yun/serverspeeder/raw/master/serverspeeder.sh"
chmod +x serverspeeder.sh

