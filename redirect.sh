#!/bin/bash 

 #shell输入、输出、重定向 


# 1、 输出 重定向: 将命令行执行结果写入到文件中。  [输出，输入是相对于 shell命令而言的]
## 命令执行结果 重定向 到指定文件中 （覆盖）
# 	who > ./log/stdOut.php
#	pwd > ./log/stdOut.php
#	echo '标准输出重定向' > ./log/stdOut.php


## 输出 重定向 （追加到文件末尾，不覆盖）
#	echo "$(date)标准输出重定向" >> ./log/stdOut.php





# 2、输入重定向 : 将左侧的命令 作用于文件内容,并输出在linux系统窗口。
#	cat   < ./log/stdIn.sh		# 将指定文件内容打印再linux系统窗口
#	wc -l ./log/stdIn.sh		# 统计文件的行数
					## 输出： 13 ./log/stdIn.sh	#总结： 文件内容行数 文件路径名
#	wc -lcw < ./log/stdIn.sh	# 默认返回行数(lines)，字节数（bytes），字数(words)
					## 输出：13 10 90	# 总结：只输出标准输出

 
#	cat < ./log/stdIn.sh > ./log/outFile.sh	# 代码执行顺序：从左至右；先重定向输入，再重定向输出；将重定向输入的内容输出到重新输出的文件中
# cat < ./log/stdIn.sh >> ./log/outFile.sh	# 追加内容



# 3、深入理解： 
#  每个Unix/Linux命令运行时都会打开三个文件：
#	标准输入文件(stdin):stdin 的文件描述符为0，Unix程序默认 从stdin读取数据
# 	标准输出文件(stdout):stdout 的文件描述符为1，Unix程序默认 向stdout输出数据
# 	标准错误文件(stderr):stderr 的文件描述符为2，Unix程序会向stderr流中写入错误信息
#
# 	注意： command >> fileName 2>&1 	# 将stdout 和 stderr 合并后 追加到fileName文件中


# 标准错误和标准输出 合并后重定向 追加到同一文件
#       file=`date '+%Y%m%d'`.log; 
#       echo `ps -ef | grep php` >> /mnt/www/shell/log/$file 2>&1       # 命令执行结果需要用 echo 打印出来
#       echo $(date) >> /mnt/www/shell/log/$file 2>&1


# 4、执行指定区域的命令，定界符
## 注意：
# 1)定界符有开头结尾两部分组成,两处定界符必须相同; 
# 2)定界符不区分大小写;
# 3)结尾的那个定>界符必须顶格写;
# 4) 后面也不能有任何字符,包括空格和 tab 缩进

#cat << EFO
#       '人生若只如初见'
#    '何事秋风悲画扇'
#  '等闲变却故人心'
#       '却道故心人易变'
#               -- 纳兰容若
#EFO

# 正确写法, 前定界符: dingjiang, 后定界符: dingjiang
#cat << dingjiang
#       '人生若只如初见'
#    '何事秋风悲画扇'
#  '等闲变却故人心'
#       '却道故心人易变'
#               -- 纳兰容若
#dingjiang

## 错误写法, 定界符前后不一致,前定界符: ding, 后定界符: dingjiang
#cat << ding
#       '人生若只如初见'
#    '何事秋风悲画扇'
#  '等闲变却故人心'
#       '却道故心人易变'
#               -- 纳兰容若
#dingjiang



# 5、输出重定向 到 /dev/null 可以禁止输出到屏幕的作用
echo "`date`---测试不输出到屏幕的重定向操作" >> /dev/null 2>&1


# 6、   1) 放在>后面的&，表示重定向的目标不是一个文件，而是一个文件描述符,其中 0 => stdin文件，1 => stdout文件， 2 => stderr文件， 文件路径如： /dev/stderr（软连接文件）
 #      2) 换言之 2>1 代表将stderr重定向到当前路径下文件名为1的regular file中，而2>&1代表将stderr重定向到文件描述符为1的文件(即/dev/stdout)中，这个文件就是stdout在file system中的映射,而&>file>是一种特殊的用法，也可以写成>&file，二者的意思完全相同，都等价于

## 第一种
        echo `date` >> `pwd`/log/`date '+%Y%m%d'`.log 2>&1      # 输出重定向到日志文件
#       echo `date` >> `pwd`/log/`date '+%Y%m%d'`.log 2&>1      # 内容未重定向到日志文件中

## 第二种
logFile="`pwd`/log/`date '+%Y%m%d'`.log";
#echo `date` >> $logFile  2>&$logFile
echo `date` >> $logFile  2&>$logFile    # 将标准错误输出到$logFile文件（覆盖）
echo `date` >> $logFile  2&>>$logFile   # 将标准错误追加到$logFile文件（追加



# 7、查询 执行命令 的历史记录
# history       # 第一种，不过可能要安装插件，yum install history
# fc -l         # 第二种，获取本次开机所有的 命令历史记录



