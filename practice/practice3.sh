#!/bin/bash 

 #判断数的奇偶 

# 定义一个只读变量,从文件输入设备获取,即屏幕输入
echo -n '输入一个数字:';
read num;


if [ $(expr $num % 2) == 0 ];
 then
	echo "$num 是偶数";
elif [ `expr $num % 2` == 1 ];
then
	echo "$num 是奇数";
else
	echo "此脚本只能操作整数和0,无法操作小数; $num ,既非奇数,也非偶数";
fi


