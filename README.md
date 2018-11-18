# Christmas-Coin

Shell script to install a [Christmas-Coin Masternode](https://christmas-coin.net/) on a Linux server running Ubuntu 16.04 or 18.04. Use it on your own risk.

+ [HERE is the PDF Masternode Setup Guide](https://github.com/Christmas-Coin/Masternode-Setup/releases/download/1.0.0/Masternode-Setup-Guide.pdf)

This script install the Christmas-Coin cold wallet on your VPS, install unzip, htop and fail2ban, creates an autostart service for the daemon and configures the firewall.

Prepare your Windows wallet:

- Collateral: 1500 CHMC
- Put to your masternode.conf: MN01 VPS_IP:23798 masternodegenkey masternodeoutputs

## Add Nodes for faster connection

addnode=91.223.147.171
addnode=80.211.240.4
addnode=195.181.223.240
addnode=80.211.46.133
addnode=149.28.50.215
addnode=149.28.142.158
addnode=45.32.135.15

## Installation
```
wget https://github.com/Christmas-Coin/Masternode-Setup/raw/master/chmc-setup.sh && bash chmc-setup.sh
```
---
## Usage control script:

```
./chmc-control.sh -[argument]

-a start Christmas-Coin service
-b stop Christmas-Coin service
-c status Christmas-Coin service
-d checks the autostart of the Christmas-Coin service when the server is starting
-e masternode sync status
-f masternode status
-g checks the blockcount
-h help - usage for this script
-i connection count
-j wallet info
-k firewall status
-l show christmascoin.conf
-m show firewall log
```
