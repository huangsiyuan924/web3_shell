#!/bin/bash

# 下载并重命名文件
wget -O hhh https://ghp.ci/https://github.com/dominant-strategies/quai-gpu-miner/releases/download/v0.2.0/quai-gpu-miner
chmod +x hhh

# 功能选择
while true; do
    echo "选择功能:"
    echo "1. 启动节点功能"
    echo "2. 查看日志"
    echo "3. 查看成功区块"
    echo "4. 退出"
    read -p "请输入你的选择 [1-4]: " choice

    case $choice in
        1)
            screen -dmS miner_session ./hhh -U -P stratum://195.26.246.50:3333 >> /var/log/miner.log 2>&1
            echo "节点功能已启动，查看日志请使用选项 2。"
            ;;
        2)
            tail -f /var/log/miner.log
            ;;
        3)
            tail -f /var/log/miner.log | grep Accepted
            ;;
        4)
            echo "退出程序。"
            break
            ;;
        *)
            echo "无效选择，请重新输入。"
            ;;
    esac
done
