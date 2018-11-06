#!/bin/sh

# 变量
user_name='dingjiang';
echo ${user_name};
echo "this is ${user_name} today";
echo "\n";	# 不解析换行符号
echo 人生 ${user_name}路漫漫;

# 双引号解析转义
name='wind';
str="Hello, what is \"$name\" \n";
echo $str;

# 回车换行,或以分号结尾表示换行
echo 1111
echo 2222
echo 3333 
echo 4444
