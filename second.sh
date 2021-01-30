#!/bin/bash

which ifconfig >/dev/null
if [ "$?" != "0"  ]; then
	echo "SyncAll error: The ifconfig utility is not install!" >&2
	echo "Ubuntu and Linux Mint: RUn 'sudo apt install net-tools'" >&2
	sudo apt install net-tool && -y 
	ecit 1
fi
