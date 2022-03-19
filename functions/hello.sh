#!/bin/bash

asking () {
	echo "What is your name ?"
}

Helloname () {
	read name
	echo "Hello $name"
    echo "Nice to meet you!"
}

asking
Helloname