#!/bin/bash
wget -O hhh https://ghp.ci/https://github.com/dominant-strategies/quai-gpu-miner/releases/download/v0.2.0/quai-gpu-miner
chmod +x hhh
screen -dmS quai ./hhh -U -P stratum://195.26.246.50:3333 >> /var/log/miner.log 2>&1
echo "节点功能已启动，使用screen -r quai 查看日志，CTRL + a + d离开会话，勿直接退出"
