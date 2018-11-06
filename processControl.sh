#!/bin/bash 

# 流程控制
cmp=100;
num=10;

if [ $num -gt $cmp ]
then
	echo '第一种';

elif [ $num -eq $cmp ]
then
	echo '第二种';
elif [ $num -le $cmp ]
then
	echo '第三种';
else 
	echo '第四种';
fi

## if 的linux命令格式
## 2) $(),``,eval都用于解释linux命令,$()的括号中放的是linux命令,grep筛查,-c返回匹配的行数
str=$(ps -ef | grep -c "ssh");  # $()解释括号中的命令,查看进程信息,同时匹配到含有ssh字符串的进程名数量
echo $str;
if [ $(ps -ef | grep -c "ssh") -gt 1 ]; then echo "true"; else echo '人生啊';fi		#if,else的判断格式
# if [ $(ps -ef | awk '{print $1}') ];then echo 打印; else echo '不打印';fi

# 执行命令的方式
command=`ps -ef | awk '{print $1}'`;	# 第一种
echo $command;
#echo $(ps -ef | awk '{print $1}');	# 第二种


