#!/bin/bash 

 #yum命令及安装 

# yum: 包依赖管理工具(基于RPM包管理),可以解决复杂的安装包依赖关系(例如: 安装A包,需要B包的支持,安装B包,需要C包的支持,成为A依赖B,B依赖C; 但是yum只需要安装A包就可以,因为yum会自动在安装A包之前去安装C,B包,所以程序员用yum只需要安装一个A包即可)

# 语法:
##	yum [option] [command] [package]	
## 
# 常用参数:
##	option: 可选; -h (帮助); -y (安装过程提示选择全部为'yes'); -q (不显示安装的过程) 等等
##	command: 要进行的操作
##	package: 要下载的安装包/软件名



# yum命令(常用的一些)
#
#	命令				功能
#
##	yum check -update		列出所有可更新的软件列表
##	yum update			更新所有软件
##	yum install packageName		安装指定的软件packageName
##	yum update packageName		更新指定的软件packageName
##	yum list [rules]		列出所有可安装的软件列表, 支持正则规则(可选参数)
##	yum remove packageName		删除指定的软件packageName
##	yum search keyWords		查找软件包(根据关键字keyWords)		 

# 清除缓存命令	
##	yum clean packages		清除缓存目录下的软件包
##	yum clean headers		清除缓存目录下的headers
##	yum clean oldheaders		清除缓存目录下旧的headers
##	yum clean [all] 		all为可选字符,清除缓存目录下的软件包和旧的headers; 注: 相当于 yum clean packages; 加上 yum clean oldheaders 
##
##


# 实例
#	yum install php		安装php软件
#	yum remove php		删除php软件
#	yum list php*		正则查找软件名以php开头的软件名列表
#


# 国内yum源 (见菜鸟教程/百度)

# 配置本地yum仓库 (见菜鸟教程/百度)
