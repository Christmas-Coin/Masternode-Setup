# Christmas-Coin
---
Shell script to install a [Christmas-Coin Masternode](https://christmas-coin.net/) on a Linux server running Ubuntu 16.04 or 18.04. Use it on your own risk.

---
+ [Masternode Setup Guide]
---
This script install the Christmas-Coin cold wallet on your VPS, install unzip, htop and fail2ban, creates an autostart service for the daemon and configures the firewall.

Prepare your Windows wallet:

- Put to your masternode.conf: MN01 VPS_IP:23798 masternodegenkey masternodeoutputs

## Installation
```
wget https://github.com/Christmas-Coin/MasternodeInstall/raw/master/chmc-autoinstall.sh && bash chmc-autoinstall.sh
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
-k firewall status
-l show christmascoin.conf
-m show firewall log
```
