#!/bin/bash

# echo 命令
## 1) 普通字符串可不加引号,直接echo
## 2)
## 3) 

echo "this is my name";
echo 'this is my name';
echo this is my name;


## 1、显示转义字符串

echo "\"this is my age\"";
# echo 'this is my age\''	# 单引号不解析转义符号

echo "$1 is my name";	# 执行文件的第一个参数为 $1

## 2、显示换行
echo -e "Ok,";	# -e 表示开启转义
echo "Ok,\n";
echo -e "Ok, \n";
echo '上面试换行测试';


## 3、将制定输出结果定向(写入)指定文件中
### 用双引号解析shell/linux命令中的关键字,如双引号转义echo关键字
echo '这是一个测试的定向文件' > /mnt/www/shell/test/test.log
echo '这是一个测试的定向文件' > "/mnt/www/shell/echo/test.log" 
echo -e "#!/bin/bash \n echo \"这是一个测试的定向文件\" \n" > /mnt/www/shell/test/test.log	# 将一串命令写入指定文件



## 4、原样输出字符串,不进行转义或取变量,用单引号
echo '$name\"';


## 5、显示命令执行结果
echo `date`;
echo `pwd`;
echo `cd /mnt/www/shell && pwd`;
