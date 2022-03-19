#!/bin/bash

Helloascii () {
	echo -e ":::    ::: :::::::::: :::        :::        ::::::::"
	sleep .3
	echo -e ":+:    :+: :+:        :+:        :+:       :+:    :+:"
	sleep .3
	echo -e "+:+    +:+ +:+        +:+        +:+       +:+    +:+"
	sleep .3
	echo -e "+#++:++#++ +#++:++#   +#+        +#+       +#+    +:+"
	sleep .3
	echo -e "+#+    +#+ +#+        +#+        +#+       +#+    +#+"
	sleep .3
	echo -e "#+#    #+# #+#        #+#        #+#       #+#    #+#"
	sleep .3
	echo -e "###    ### ########## ########## ########## ########"
	echo -e '\e[2m'"$(whoami),"'\e[0m'
}

Elitalpa () {
	echo -e '\e[8m'"made by Eli (eli-talpa.com)"'\e[0m' #it's hidden ;)
}

Dateandtime () {
	echo "date : $(date +'%d/%m/%Y')"
	echo "time : $(date +'%r')"
}

Theweather () {
	curl wttr.in
}

Ajoke () {
	thejoke=$(shuf -n 1 joke.txt)
	echo -e "$thejoke"
}

Understandingerror () {
	echo "I don't understand: $REPLY"
}

Additionate () {
	read -p "Enter the first number: " n1
	read -p "Enter the second number: " n2
	echo "$n1 + $n2 = $(($n1+$n2))"
}

Subtract () {
	read -p "Enter the first number: " n1
	read -p "Enter the second number: " n2
	echo "$n1 - $n2 = $(($n1-$n2))"
}

Multiplicate () {
	read -p "Enter the first number: " n1
	read -p "Enter the second number: " n2
	echo "$n1 * $n2 = $(($n1*$n2))"
}

Divide () {
	read -p "Enter the first number: " n1
	read -p "Enter the second number: " n2
	echo "$n1 / $n2 = $(($n1/$n2))"
}

Calculateagain () {
	echo "Calculate Again!"
}

Thecalculator () {
	echo "Let's calculate something, afterall this is at what computers are best for" 2>/dev/null
	select calculate in add subtract multiply divide cancel; do

	case $calculate in
		add)
			Additionate
			Calculateagain
		;;
		subtract)
			Subtract
			Calculateagain
		;;
		multiply)
			Multiplicate
			Calculateagain
		;;
		divide)
			Divide
			Calculateagain
		;;
		cancel)
		Quitting
		break
		;;
		*) 
		echo "Invalid option : $REPLY"
		;;
	esac
	done
}

Quitting () {
	echo -e '\e[5m'"Quitting..."'\e[0m'
	echo "`tput blink`...`tput sgr0`"
	sleep 2s
	tput el
	tput cuu1 # move cursor up by one line
	tput el # clear the line
	tput cuu1 # move cursor up by one line
	tput el # clear the line
}

Helloascii
Elitalpa

select something in time weather joke calculate quit; do

case $something in
	time)
		Dateandtime
		;;
	weather)
		Theweather
	;;
	joke)
		Ajoke
	;;
	calculate)
		Thecalculator
		;;
	quit)
		Quitting
	  break
	;;
	*) 
		Understandingerror
	;;
  esac
done




#Reset = '\e[0m'
#Bright = '\e[1m'
#Dim = '\e[2m'
#Underscore = '\e[4m'
#Blink = '\e[5m'
#Reverse = '\e[7m'
#Hidden = '\e[8m'