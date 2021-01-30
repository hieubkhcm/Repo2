#!/bin/bash

a=1
b=2
echo "this is before function1"
echo $a

function1(){
	a=2
	echo "This is function1"
	echo $a
}

echo "this is after function1"
echo $a

function1

echo "This is after calling function1"
echo $a
