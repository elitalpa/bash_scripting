
#!/bin/bash

checking () {
thePATH=$1

if [ -d $thePATH ] 
then
	cd $thePATH
	ls -l

elif [ -f $thePATH ]
then
	if grep -q '[^[:cntrl:][:print:]]' $thePATH				#add LC_ALL=C if you want just ascii and not include letters with accents that may be valid UTF-8 printable characters
	then															#cntrl --> ascii from 000 through 037 and 177(DEL), print --> printables characters, all the other characters in the ascii table
  		echo "error : file contain non-ASCII, doesn't contain only text"			#checks if file contains other characters that are not printable or not control characters (basically it checks for non ASCII characters)
	else
		cat $thePATH
	fi
else
	echo "Error !!"
fi
}

checking $1