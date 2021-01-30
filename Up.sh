#!/bin/bash


set -e # this commans means exit the code if there is ANY ERROR

#Functions:

update() {

	echo "Starting full system update..."
	sudo apt update
	sudo apt dist-upgrade -yy

}


clean() {

	echo "Cleaning up..."
	sudo apt autoremove -yy
	sudo apt autoclean

}

leav() {

echo "-----------------"
echo "-Update Complete-"
echo "-----------------"

exit

}

up-help() {

cat << _EOF_

Up is a tool that help to update the system

_EOF_
}

echo "Up -- Debian Update Tool"




if [ "$1" == "--clean" ]; then
	update
	clean
	leave
fi

if [ "$1" == "help" ]; then
	up-help
	exit
fi

if [ -n "$1" ]; then
	echo "Up error: invalid arguments" >&2
	exit 1
fi

update
leave
