#!/bin/sh

# if判断
## 1) [] 的两边内侧和中括号内的字符之间要有一个空格,否则报错

if [ -n $1 ];then
	echo '有';
else 
	echo '没有';
fi
