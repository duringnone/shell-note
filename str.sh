#!/bin/bash

# 逻辑运算符
a=120;
b=150;
if [[ $b < 200  && $a > 100 ]]
then
	echo '对的';
else 
	echo '有差错了';
fi


if [[ $b < 100 ||  $a > 100 ]]
then
	echo 'ok';
else 
	echo 'no ok';
fi




# 字符运算符
name='ding';
class='six';
mail='ding';
if [ $name = $mail ]
then
	echo '111';
else 
	echo '222';
fi


if [ $name != $class ]
then
	echo '111';
else 
	echo '222';
fi


if [ $name = $mail ]
then
	echo '111';
else 
	echo '222';
fi
