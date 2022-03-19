
#!/bin/bash

#echo "$(whoami) is part of the group $(groups)"

grouplist () {
	for group in $(groups)
	do
	echo "$(whoami) is part of $group"

	done
}
grouplist