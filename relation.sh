#!/bin/sh

# 关系运算符
## -eq : 等于
## -ne : 不等于
## -gt : 左边大于右边 
## -lt : 左边小于右边
## -ge : 左边大于等于右边
## -le : 左边小于等于右边
## 符合要求则返回true,如 10 -eq 20,不相等，返回false

a=10;
b=20;

if [ $a -eq $b ]
then
	echo "$a 等于 $b";
else 
	echo "$a 不等于 $b";
fi

if [ $a -ne $b ]
then
	echo "$a 不等于 $b";
else 
	echo "$a 等于 $b";
fi

if [ $a -ge $b ]
then
	echo "$a 大于或等于 $b";
else 
	echo "$a 小于 $b";
fi

if [ $a -le $b ]  
then 
	echo "$a 小于等于 $b";
else 
	echo "$a 大于 $b";
fi


