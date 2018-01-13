##shadowsocks安装&运行

- apt-get install python-pip
- pip install shadowsocks
- or
- apt-get install shadowsocks

shadowsocks.json

    {
    "server":"11.22.33.44",
    "server_port":50003,
    "local_port":1080,
    "password":"123456",
    "timeout":600,
    "method":"aes-256-cfb"
    }
    
sslocal -c /xxx/xxx/shadowsocks.json


term终端设置代理

apt-get install polipo

vim /etc/polipo/config

    logSyslog = false
    logFile = "/var/log/polipo/polipo.log"

    socksParentProxy = "127.0.0.1:1080"
    socksProxyType = socks5

    chunkHighMark = 50331648
    objectHighMark = 16384

    serverMaxSlots = 64
    serverSlots = 16
    serverSlots1 = 32

    proxyAddress = "0.0.0.0"
    proxyPort = 8123

启动
service polipo stop
service polipo start
service polipo restart

term 输入
export http_proxy=http://localhost:8123
或
~/.bashrc
alias hp="export http_proxy=http://localhost:8123"


安装chrome

wget http://www.linuxidc.com/files/repo/google-chrome.list -P /etc/apt/sources.list.d/

wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -

apt-get update

apt-get install google-chrome-stable

/usr/bin/google-chrome-stable

chrome扩展:SwitchyOmega

https://github.com/FelisCatus/SwitchyOmega/wiki/GFWList






