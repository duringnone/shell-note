#!/bin/bash 

 #shell函数 

# 函数语法：
## 1) 函数命名： function 关键字可有可无，函数名后的 () 也可有可无,function test() {} 或 test () {} ,或function test {};注意：test {} 会报错 ;但是建议还是 使用全写： function test() {}
## 2) 返回值: 有返回值 ,则return返回值，否则返回最后一条命令的执行结果
## 3) 


#function func1()	# 正确语法
function func1		# 正确语法
{
#	echo '这是函数111';
	read num1;
}
func1
#echo "内存中的值：$?";
#exit;	# 断点

# func2 为什么输出了正确结果还报错？？？
func2 ()	# 正确语法
#func2 		# 错误语法
{
	`seq -s -- 10`;	# 输出1~10，并以--分隔
}
func2


function func3 () 
{
	echo '第一个加数'；
	read num1;
	echo '第二个加数';
	read num2;
	return  $(($num1+$num2));
}
func3

echo "相加之和：$?";	# 最后运行的命令的结束代码（返回值）--获取内存中的值???
			# 运算结果会存放在内存中？？？？
## 解答: $? 可以获取最后一条命令的执行结果(最后一条:$? 的上一条命令)


echo -e '相加之和：$?';	# 错误语法，$? 不被解析，作为字符串输出
echo -e '相加之和：\$?';	# 错误语法，$? 不被解析,作为字符串输出
