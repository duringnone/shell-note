#!/bin/bash 

 #包含文件 

# 包含文件夹符号
## 1)  . 或者 source ，都和文件路径名之间有一个空格
## 2)  被包含的文件 可以没有执行权限，

#. ./info.sh			
source ./info.sh
echo '小帅哥信息：'$name -- $age -- $sex-- $hobby;
