#!/bin/bash

# 这是一个测试文件权限的文件,0777,中的0指的是当前用户对文件的操作权限
## SUID->4,缩写S
## SGID->2,缩写S
## SBIT->1,缩写T

## chmod 4744 文件名   	# 显示: -rwSr--r--
## chmod 2744 文件名	# 显示: -rw-r-Sr--
## chmod 1744 文件名	# 显示: -rw-r--r-T
## chmod 7744 文件名	# 显示: -rwSr-Sr-T
## chmod 7777 文件名	# 替代执行文件属性x,显示: -rwsrwsrwt
