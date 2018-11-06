#!/bin/bash


# 这是基本语法结束后整体的测试
# test 命令: 验证条件是否成立

## 1、数值测试
### 1) -eq 相等, -ne 不相等, -gt 大于, -ge 大于或等于, -lt 小于或等于, -le 小于或等于; 以上比较符号,满足为真,不满足为假
num1=111;
num2=120;
num3='222';
echo $num2;
echo $num3;
if [ $num1 -eq $num3 ]
then
	echo '相等';
else 
	echo '不相等';
fi
sum=$[$num1+$num3];	# 数值之和,而非数字之和.'222'在shell中算整型/字符型????
sum2=$[num1*$num2];	# $[]  中乘号不用转义,也不用空格
echo $sum,$sum2;



## 2、字符串测试
name='';
str1='ding';
str2='ding';
str4='jiang';
if test -z $name 
then 
	echo '变量name是空字符';
else
	echo '变量name不是空字符';
fi

### test命令测试
test -n $str1 && echo $str1;		# 若$str1不为空则输出$str1
test 'ding' = $str1 && echo $str1; 	# 若$str1='ding',则输出$str1


## 3、文件测试
### -e 文件是否存在, -r 文件是否可读, -x 文件是否可执行, -s 文件内容(字符)是否为空, -f 文件是否存在且是否为普通文件, -b 文件是否为块设备文件, -c 文件是否为字符设备文件, -d 文件是否存在且是否为文件目录
dir=/mnt/www/shell		# 文件可以不加引号,建议加引号
test -d  && echo "文件夹 $dir 存在";
fileName='/mnt/www/shell/test.php';	
fileName='/mnt/www/shell/test-1.sh';	
test -f $fileName  && echo "文件 $fileName 存在";
test -r $fileName && echo "$fileName 可读";
test -w $fileName && echo "$fileName 可写";
test -x $fileName && echo "$fileName 可执行";
if test -s $fileName 
then 
	 echo "$fileName 内容不为空";
else 
	 echo "$fileName 内容为空";
fi


## 4、逻辑符号， ! 逻辑非, -a 逻辑与, -o 逻辑或, 优先级: 非>与>或


## 5、位运算与，先将操作数转化为二进制数，再对二者进行逻辑与
echo $[2&3];
echo $[3&7&15];	#自我总结规律,结果一般由最小的几个数决定


## 6、自由测试
number1=100;
number2='100';
test $number1===$number2 && echo '二者全等';
test $number1==$number2 && echo '二者值相等';
test $number1=$number2 && echo '二者值相等';
if [ $number1 == $number2 ] 
then 
	echo '相等';
else
	echo '不相等';
fi
