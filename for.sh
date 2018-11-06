#!/bin/sh

#for file in `ls /etc`	# ··解析命令
#for file in 'ls /etc'	# 单引号不解析命令	
for file in "ls /etc"	# 双引号不解析命令	
do
	echo $file;
done

# for file in $(ls /etc)	# $() 解析linux命令 
# do
#	echo $file;
# done



# 循环遍历字符串
str='dingjian';
for i in "${str}";do
	echo $i
done



# 遍历数组
# 遍历数据，切记必须使用{}分隔符，否则只能取第0个元素
arr=('丁江' 'man' '22' '爱好女');
#for j in ${arr[@]};	# 正确语法
for j in ${arr[*]};	# 正确语法
#for j in $arr[3];      # 错误示例: $arr[3]否则识别为$arr[0],和[3] ,必须使用分隔符{}
# for j in ${arr};      # 注意: ${arr} <==> ${arr[0]},只取第0个元素
do
	echo $j
done


# for 循环 （和其他语言类似）
for ((k=10;k>=1;k--))
do
	echo $k;
done

# 无限循环
set m=3;
for((n=0;n<10;))	# 自增/减 可以不再(())中，但是初始值+终止条件 必须存在	
do
	echo $m;
	let m--;	# 自减
done




