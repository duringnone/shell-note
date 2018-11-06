#!/bin/bash

# 逻辑运算符
a=100;
b=199;

if  [ $a != 122 ] 
then
	echo '符合';
else
	echo '不符合'; 
fi

if [ $a > 10 -a $b > 100 ]
then
	echo "合格";
else 
	
	echo "不合格";
fi

if [ $a -gt 10 -o $b -lt 100 ]
then
	echo "合格";
else 
	
	echo "不合格";
fi

