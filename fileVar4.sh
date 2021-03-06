#!/bin/bash

# $@ 和 $* 的区别
## 区别: $* 相当于传递了一个由多个参数拼接后的字符串, $@相当于传递了多个参数字符串

# 注意:
## 1) \ 转义符号,转义后的字符解析器不再解析
## 2) shell文件中,换行符号和 分号,都表示当前行命令到此截止
## 3) do后只能使用换行符号, 不得用分号结束

echo "-----\$* 实例----------";
for i in "$*"
do
	echo $i
done


echo "-----\$@ 实例----------";  
for i in "$@";
do			
	echo $i;
done;
