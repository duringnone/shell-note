#!/bin/bash 

 #这是shell脚本自动创建的文件

# 声明可读变量: read number，执行此行命令时，输入变量值，回车，即可将变量值赋给可读变量number

# 1) if else 判断
num=12;
if [ $num -gt 20 ]  
then 
	echo '20 ~ 25';
elif [ $num -lt 4 ]
then
	echo '这是个错误的区间';
elif [ $num -ge 121 ]
then
	echo '大于121';	
else 
	echo '10 ~ 15';
fi

## if else 命令行
if [ $num -gt 10 ]; then echo 'this is 小帅哥'; else echo '啥也没有'; fi
if [ $num -gt 10 ]; then echo $(ps -ef | grep php | awk 'NR==3  {printf $2}'); else echo '啥也没有'; fi	#第3行第2列


## test 命令
if test $num -le 10
then
	echo 'num小于/等于10';
else 
	echo 'num大于11';
fi


# 2)  for 循环
## 语法： 
	#	for 变量名 in 值1 值2 值3...
	#	do
	#		echo $变量名;
	# 	done
## 注意： for循环的操作数必须以空格隔开，无法直接操作数组（直接操作数组<=>操作数组的第0个元素）
for var in 11 22 33 44 55 
do 
	#echo 'for循环打印的值:' $var;	# 单引号不解析变量
	echo 'for循环打印的值:' $var;
done



## for循环作用数组，只输出第0个元素（数组下标从0开始计数）
arr=('aa' 'bb' 'cc' 'dd' 'ding' 'jiang');
for var2 in $arr
do
	echo '数组的值依次为:'$var2;
done


## for 循环作用字符串
for str in 'this aaa' 'is' 'my' 'name'
do
	echo '测试的字符串:' $str;
done

# for 循环一个范围内的数
## 结构： 变量赋初值;循环终止的条件;自增/自减
## 注意： for 循环中的变量不需要加$符号，但是在shell使用变量时须加上$,如下的$i
for ((i=1;i<=10;i++))
do 
	let s=4*i;
	echo $s;
done




# 3) while 循环
age=21;
while(($age<=25))	# 正确语法
#while[[$age<=25]]	# 错误的语法
#while$($age<=25)	# 错误的语法
do
	echo '年龄:'$age;
	let age++;	# 正确语法
#	let "age++";	# 正确语法
#	let `age++`;	# 错误语法
done

# echo -n '123';	# echo -n 表示不换行输出
# echo -e '123';	# echo -e 表示解析转义字符并输出	
				

## while循环读取键盘信息
### 操作： 运行脚本文件后，直接键盘输入内容:dingjiang，回车则输出:dingjaing
echo -n '测试while循环读取键盘信息：';
while read FLIM
do 
	echo '===>' $FLIM ;	
done


## 无限循环
### 1) while无限循环
count=0;
#	while true
#	do 	
#		echo '无限循环'$count;
#		let count++;
#	done

#	while :		# 正确语法
#	#while((1))	# 正确语法
#	#while 1		# 错误语法
#	#while(('aaaa'))		# 正确语法
#	do
#		echo '无限循环'$count;
#		let count++;
#	done

### 2) for 无限循环
for((i=2;i<=0;i++))
do 
	echo $i
done



# until 循环 （与while循环相反，while是条件为true时，执行循环体，循环条件为false时，终止循环）
set x=2
until [ ! $x -lt 10 ]	# 正确语法
#until false		# 正确语法
#until :		# 错误的语法
do
	echo $x;
	let x++;
done

echo -n '下面是例子2:';	# echo -n 表示不换行输出，echo -e 表示解析输出内容中的转义符号和变量
echo -e "$x";

## 例子2
a=0;
until [ ! $a -le 10 ]
do
	echo $a;
	let a++;
done




# case 
## case 中的 *) 作用类似 PHP中case 的default, 
##	语法	
##	case 变量 in
##		变量/常数)
##			command
##		;;		
##	esac
	
## 声明可读变量，执行此行命令时，输入变量值，回车，即可将变量值赋给可读变量number
#echo '请输入一个数字，可以1~4，或其他：';
read number	# 声明可读变量，执行此行命令时，输入变量值，回车，即可将变量值赋给可读变量number
case $number in
	1)
		echo '输入了---'$number;
	;;
	2)
		echo '输入了---'$number;
	;;
	3)
		echo '输入了---'$number;
	;;
	4)
		echo '输入了---'$number;
	;;
	*)
		echo '输入了范围以外的---'$number;
	;;
esac



# 跳出循环
## break:     跳出所有循环（本层循环体）
## continue： 跳出本次循环（本层循环体的一次循环）


## 当输入的数字不在1~4范围内，则跳出无限循环
while :
do
	echo '测试break：';
	read break;		# 可以用系统关键字 break 作为变量名，但不建议这么做
	case $break in
		1|2|3|4)	# 使用 位或符号 表示多种情况,输出同一内容	
			echo '这是范围的数----'$break;
		;;
		*)
			echo '这是超出范围内的数----'$break;
			break;
		;;
	esac
done



## continue 测试
while :
do
	echo '测试continue：';
	read con;
	case $con in
		1|2|3|4)
			echo '这是范围的数----'$con;
		;;
		*)
			echo '这是超出范围内的数----'$con;
			continue;
			echo 'boy，game 结束';
		;;
	esac
done
