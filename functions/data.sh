#!/bin/bash

information () {
	echo "date : $(date +'%d/%m/%Y')"
	echo "time : $(date +'%r')"
	echo "username : $(whoami)"
	echo "current directory : $(pwd)"
}
information