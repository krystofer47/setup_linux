#!/bin/bash

[[ -d ~/bin ]] || mkdir ~/bin
if [[ $EUID -eq 0 ]]; then
	echo "This script is running with root access";
	exit 0;
else
	echo "This script is not running with root access";
	exit 1;
fi
