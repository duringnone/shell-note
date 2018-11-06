#!/bin/bash

# shell中运算的三个关键词:$[] ,  let , `expr `
num=$[$1+$2];		# 有效
num2=`expr $1+$2`;	
num3=let $1+$2;
num4=(($1+$2));
num5=$(($1+$2));	# 有效

str="$0文件的第$num个客户";
str2="$0文件的第$num2个客户";
str3="$0文件的第$num3个客户";
str4="$0文件的第$num4个客户";
str5="$0文件的第$num5个客户";



echo $str;
echo $str2;
echo $str3;
echo $str4;
echo $str5;
