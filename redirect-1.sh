#!/bin/bash


# 重定向


# 标准错误和标准输出 合并后重定向 追加到同一文件
file=`date '+%Y%m%d'`.log; 
#`ps -ef | grep php` >> /mnt/www/shell/log/$file 2>&1
#echo $(date) >> /mnt/www/shell/log/$file 2>&1

#echo $(date) >> /mnt/www/shell/log/`date '+%Y%m%d-%H'`.log 2`>&1
