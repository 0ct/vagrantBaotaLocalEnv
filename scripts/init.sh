#!/usr/bin/env bash
if ! [ -L /usr/bin/bt ]; then
    wget -O /opt/bt_install.sh http://download.bt.cn/install/install-ubuntu_6.0.sh && echo y | sudo bash /opt/bt_install.sh ed8484bec
else
    echo "宝塔面板已安装"
    bt 14
fi
