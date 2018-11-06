#!/bin/bash 

 #这是shell脚本自动创建的文件

# 测试可读变量
echo '请输入可读变量的值：';
read var;
echo '可读变量var的值为----'$var;

# read命令作用：
#	从标准输入中读取一行，并把输入行的每个字段的值指定给shell变量

# 常用参数	功能
##	-a	 后跟一个变量，该变量会被认为是个数组，然后给其赋值，默认是以空格为分割符。
##	-d	 后面跟一个标志符，其实只有其后的第一个字符有用，作为结束的标志，会举例说明。
##	-p	 后面跟提示信息，即在输入前打印提示信息。
##	-e	 在输入的时候可以时候命令补全功能。
##	-n	 后跟一个数字，定义输入文本的长度，很实用。
##	-r	 屏蔽，如果没有该选项，则作为一个转义字符，有的话 就是个正常的字符了。
##	-s	 安静模式，在输入字符时不再屏幕上显示，例如login时输入密码。
##	-t	 后面跟秒数，定义输入字符的等待时间。
##	-u	 后面跟fd，从文件描述符中读入，该文件描述符可以是exec新开启的。