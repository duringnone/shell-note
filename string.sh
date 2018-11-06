#!/bin/sh

# 字符串
str1='这是一个字符串';
str2='dingjiang@qq.com';
## 截取字符串
echo ${str2:1:4};	#参数:操作数,起始位置,截取长度,从第0位开始计算

## 获取字符串长度
echo ${#str2};

## 查找字符串中指定字符(子字符)
echo `expr index "$str2" ng`;	# 从第1位开始计算,只返回首次匹配到的位置,(多次匹配只返回首次匹配的结果)

echo ${str1}${str2};
