#!/bin/bash

# shell 传递参数
# 单引号不解析变量
echo 'shell脚本传递参数实例如下:';
echo '执行的文件名 $0';
echo '第一个参数 $1';
echo '第二个参数 $2';
echo '第三个参数: ${3}';

# 双引号解析变量
echo "shell脚本传递参数实例如下:";
echo "执行的文件名 $0";
echo "第一个参数 $1";
echo "第二个参数 $2";
echo "第三个参数: ${3}";
