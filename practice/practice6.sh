#!/bin/bash 

 # shell函数 

# 创建用户
function addUser () {
	
	echo '创建用户';	
}


# 删除用户
function delUser() {

	echo '删除用户';
}


# 根据执行脚本的参数,创建/删除用户
operation=$1;	# 脚本参数1,
func=$opertion'User';	# 拼接函数名

# echo $(type  'addUser');exit;		# type返回指定的命令,若addUser是函数名,返回function类型名,否则返回为空
# echo $(type -t 'addUser');exit;		# 若addUser是函数名,则返回整个函数内容,否则返回为空; 如: addUser is a function addUser() { echo '创建用户' }

if [ $(type -t $func) = 'function' ];then
	echo "$func 函数已存在";
else 
	echo "$func 函数未定义";
fi

if [ -n $1 ];then
	echo '函数名不得为空';
	exit;
fi


if [ -n $2 ];then
	echo '用户名不得为空';
	exit;
fi


case "$1" in
	 'add')
		function addUser $2;	# 创建
		;;
	
	'del')
		function delUser $2;	# 删除
		;;
	
	*)
		echo 'ERROR: 想创建用户,执行脚本的参数1输入:add; 参数2为用户名';
		echo 'ERROR: 想删除用户,执行脚本的参数1输入:del; 参数名为用户名';
		;;
esac




	function 
