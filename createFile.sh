#!/bin/bash

# 这是一个创建测试文件的脚本
## 注意： 第一个参数：文件名，第二个参数：文件备注

fileName=$1'.sh';
remark='#这是shell脚本自动创建的文件';
if [ $2 ]
then
	remark='#'$2;
fi

path="/mnt/www/shell/$fileName";
if [ -e $path ]
then
	echo "$path 文件已存在,请勿重复创建";
else 
	echo -e "#!/bin/bash \n\n $remark \n" > $path;	# 将shell内容输入到指定文件中，若该文件不存在，自动创建该文件
	chmod 0777 $path;
	if [ -e $path ]
	then
		echo $path'文件创建成功';
	else 
		echo $path'文件创建失败';
	fi
fi
