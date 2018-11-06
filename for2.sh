#!/bin/bash 

 #这是shell脚本自动创建的文件

##########################################
## 	exit	可在shell脚本中打断点	##
##########################################


# for 循环应用

## 遍历数组
#arr=('name' 'age' 'sex' 'mail' 'hobby');
#for val in ${arr[@]}	# for循环此处： 必须使用变量分隔符，否则数组变量不被解析
#do
#	echo "数组元素为 ${var}";
#	sleep 1		# 表示每个一秒钟; sleep 函数,表示延迟时间,单位:秒数
#	date		# 获取当前的时间，格式: Tue Jul 31 23:31:36 CST 2018 ;
#			# 周几 月 日 时:分:秒 时区 年;
#done



## for循环 字符串，这个字符串可以是解析的命令行
#	for com in `ls`		# `ls` 遍历当前文件所在文件夹的所有文件
#	#for com in `ll`			# 错误写法，不解析`ll`
#	#for com in $(ll /mnt/www/shell)	# 错误写法
#	do
#		echo '当前值为：'$com;	# 输出所有文件名
#	done


## for 循环某个范围内的数字，
### 注意： seq n, 可以取1到n的整数，但是n为百万级别数时，会有问题，n不再是阿拉伯数字，而是科学计数
#	for num in $(seq 10)	# 正确语法
#	for num in $(seq 1 10)	# 正确语法
#	#for num in `seq 10`	# 正确语法
#	#for num in ((seq 10))	# 错误语法
#	do
#		echo 'seq函数范围内的数有---'$num;
#	done


## 遍历脚本所有入参 
### \$* 表示脚本所有入参 
for param in $*
do
	echo '脚本入参为----'$param;
done



## 输出字符串
#for str in 这个字符串
for str in dingjiang 109741 '男' 22	# 字符串 可用/可不用 单引号  
do
	echo '输出字符串：'$str;
done


## for循环： 使用正则获取文件名
#for shFile in *.sh		# 正确语法
for shFile in $(ls *.sh)	# 正确语法
do
	echo '循环，使用正则获取文件名：'$shFile;
done



# for 循环字符串特性:对字符串空格遍历
# # 当字符串中以空格作为分隔符时，该字符串和数组的处理方法一样，根据空格切割成多个子串，每次输出一个子串, 测试方法：使用break中断循环
list='ding 男 22 爱好女';	
str='dingjiang';
for sonStr in $list 
#for sonStr in $str 
do
	echo $sonStr;
	break;
done


# awk 中的 for循环
#	echo `awk 'BEGIN{for(a=1;a<=10;i++) print a}'`;	 # 命令行未解析，被当做字符串输出
#	echo $(awk 'BEGIN{for(a=1;a<=10;i++) print a}'); # 命令行未解析，被当做字符串输出
#	echo "awk 'BEGIN{for(a=1;a<=10;i++) print a}'";	# 命令行未解析，被当做字符串输出
# 	awk 'BEGIN{for(a=1;a<=10;i++) print a}'	# 直接在shell命令窗口执行此行命令
# 注意:linux中严格区分大小写，是BEGIN，而非begin
