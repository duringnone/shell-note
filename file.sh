#!/bin/bash

# 文件操作命令
# 注意:
## 1) 块设备必须顺序读取,而字符设备随机读取,如硬盘是块设备,键盘是字符设备
## 2) 


file='/mnt/www/shell/file.sh';
## 1、检测文件是否为块设备文件,若是则返回true,否则返回false
if [ -b $file ]
then
	echo '是块设备文件';
else 
	echo '非块设备文件';
fi

## 2、检测文件是否为字符设备文件
if [ -c $file ]
then
	echo '是字符设备';
else 
	echo '非字符设备';
fi

## 3、检测文件是否为目录
if [ -d $file ]
then 
	echo '是目录';
else
	echo '非目录';
fi

## 4、检测文件是否为普通文件(不是目录,也不是设备文件)
if [ -f $file ]
then
	echo '是普通文件';
else 
	echo '非普通文件';
fi

## 5、检测文件是否设置SGID位
file2='/mnt/www/shell/mode.sh';
if [ -g $file2 ]
then
	echo '设置了SGID位';
else 
	echo '未设置SGID位';
fi

## 6、检测文件是否设置了粘着位(Sticky Bit),
### 注意: 粘着位可以保护目录不被删除,但是具有w权限的用户可以更改目录下文件内容;文件目录才有粘着位,粘着位只对root和文件所有者有效,
if [ -k $file2 ]
then
echo '设置了粘着位';
else 
echo '未设置粘着位';
fi

## 7、检测是否为有名管道
### 无名管道: 用于父进程和子进程间的通信
### 有名管道: 用于同一系统任意两个进程间通信
if [ -p $file ]
then
	echo '是有名管道';
else
	echo '非有名管道';
fi

## 8、检测是否设置SUID位,SUID是设置文件当前用户的权限
if [ -u $file2 ]
then
	echo '设置了SUID位';
else
	echo '未设置SUID位';
fi

## 9、文件是否可读
if [ -r $file ]
then
	echo '文件可读';
else 
	echo '文件不可读';
fi 

## 10、文件是否可写
if [ -w $file ]
then
	echo '文件可写';
else 
	echo '文件不可写';
fi 

## 11、文件是否可执行
if [ -x $file2 ]  # 设置SBIT的文件仍然不可执行
then 
	echo '文件可执行';
else
	echo '文件不可执行';
fi

## 12、文件是否为空(即文件大小是否大于0),不为空返回true
if [ -s $file2 ]
then 
	echo '文件内容为空';
else 
	echo '文件内容不为空';
fi


## 13、检测文件/目录 是否存在
if [ -e $file ]
then 
	echo "文件/目录存在";
else 
	echo '文件/目录不存在';
fi


