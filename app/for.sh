#!/bin/bash 

 #for循环的应用 


# 获取1~1000 0000 0000
## 注意： 当数字比较小,如100以内,下列两种均适用,但是当数字过大如 1个亿,seq函数采用科学计数，输出不再是阿拉伯数字;第一种失效,但是第二种仍可用
# seq 命令语法： seq -s 分隔符 起始数 截止数， 如 seq -s -- 2 10  , 起始数可省略，默认为1
#for num in `seq 100`		    # 第一种
for((num=1;num<=10000000000;num++)) # 第二种
do

	echo $num;
#	if((num%3==0))
#	then
#		echo '当前的数为----'$num;
#		continue;
#	fi
done