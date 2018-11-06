#!/bin/bash 

 #shell应用 

# 九九乘法表


#num=0;		# 设置屏幕输入后执行的变量,可不赋初值 
echo -n '输入一个数字,如5,则输出5*5的乘法表:';
read num;

for((i=1;i<=$num;i++))	# 行
do
	for((j=1;j<=i;j++))	#列
	do
		# echo -en "$j * $i =" $[ $i*$j ] '   ';	# 正确写法
		# echo -en "$j * $i =" $(expr $i \* $j) '   '; # 正确写法,注意:每个运算字符间都有空格
		 echo -en "$j * $i = `expr $i \* $j`     "; 	# 正确写法,注意每个运算字符间都有空格,且$(),`` 都必须使用expr关键字
	done
	echo '';

done






