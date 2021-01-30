#!/bin/bash


set -e # this commans means exit the code if there is ANY ERROR

#Functions:

Update() {

	echo "Starting full system update..."
	sudo apt update
	sudo apt dist-upgrade -yy

}
