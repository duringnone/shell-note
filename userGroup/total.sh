#!/bin/bash 

 #用户和用户组命令,以及账号信息(用户信息,用户组信息,用户密码) 

# 一、 命令
#	命令		作用
#	useradd		添加新用户
#	usermod		修改用户信息(?????)
#	userdel		删除用户
#	groupadd	添加新用户组
#	groupmod	修改用户组
#	groupdel	删除用户组
#	passwd		修改用户密码(root用户不用输入旧密码)
#
## 注意:
##	1) 因为命令有多个参数,且每个参数都有参数值,所以格式为: command -var1 value1 -var2 value2 -var3 value3 ... value	, 如: useradd -c '这是duringnoe用来测试的' -g testUser -d /home test001 
## 	2) usermod 可以修改useradd 中的所有属性; groupmod同理
##	3) UID 和 GID的取值范围: (500,60000), 即501~59999


# 1、用户 
## useradd	添加
### 参数:
#	-c	# comment 指定一段注释
#	-d	# 目录 指定用户家目录,若此目录不存在,则需要使用-m创建家目录（家目录又名主目录）
# 	-g	# 用户组 指定用户所属用户组
# 	-G	# 用户组,指定用户附加的用户组; 注:一个用户可以属于多个用户组,但只有一个主要的属组(登录时默认),其他属组均为附加用户组
#	-s	# Shell文件 指定用户的登录执行文件; 注:每个用户都会有个登录执行文件,参照文件/etc/passwd 
# 	-u	# 用户ID,若同时使用-ou 表示不仅指定用户ID,并且重复使用用户ID(即用户ID已存在时,但是新用户仍然使用原用户ID)

## 总结: 
###	1) 创建用户时,若未指定用户组,则默认创建与用户名同名的用户组, 如: useradd test001, 则同时创建用户组test001
###	2) useradd -c '测试账号001' -g testUsers -G testUsers,customs,tests -d /home/ test001  # 指定用户组testUsers, 同时添加多个附加用户组,附加用户组名间用逗号隔开


## usermod	修改
### 参数:
#	usermod -c '修改后的测试账号005' -g test006 -G test003 -d /utest005 -s /sbin/nologin test005	# 可以修改用户的所有属性(useradd命令中有介绍)


## userdel	删除
### 参数:
#	userdel test005		# 删除用户test005,注: 只删用户在文件/etc/passwd 信息,不会删除 /etc/group 中信息 和 用户家目录 /home/test005
#	userdel -r test005	# 删除用户test005所有信息, (删除/etc/passwd, /etc/group, /etc/shadow 和 家目录/home/test005)



# 2、密码
##  passwd [option] 用户名	修改用户密码(即口令)
### 参数:
#	-l	# 锁定口令,即禁用账号,注:lock
#	-u	# 口令解锁,注:unlock
#	-d	# 使账号无口令,即无密码
#	-f	# 强迫用户下次登录时修改口令
#
# 格式: 
#	passwd [option] 用户名
# 总结:
##	1) passwd [用户名]	#若默认用户,则修改当前用户密码, 如 passwd test001 
##	2) 密码规则(取值范围): 0-9,a-z,A-Z, 这三者的随意组合; 但是不得有特殊字符
## 	3) passwd -d test001	# test0011下次登录时,不再需要密码
## 	4) passwd -l test001	# 锁定用户test001,解锁: passwd -u test001
##



# 3、用户组
## groupadd	添加
### 参数:
#	-g	指定新用户组的组标识号(GID)
#	-o	一般和-g一起用,表示新用户组的GID 可以和已有的用户组GID相同,注: over
#
# 总结:
##	1) groupadd -g 522 用户组名	# 新建用户组名,如: grounp testUsers (新建用户组testUsers)
##	2) groupadd -g 505 -o 用户组名	# 新建用户组名,指定GID,且可以使用已存在的GID
##


## groupmod	修改
### 参数:
#	参数与groupadd参数一致,可以修改上述所有属性
#
#	groupmod -g 506 -o test0823  # 其中506为修改后的GID

## groupdel	删除
### 参数:


## newgrp 	切换用户组
#	
#	newgrp	testUsers	# 切换用户组,切换到testUsers 用户组;注: testUsers必须为用户的主组或附加组,一般用于多用户组用户
#	






# 二、 文件介绍		(文件作用和文件内容格式)


# 	文件路径	作用			文件文件内容格式
# 	/etc/passwd	存放用户信息		
# 	/etc/shadow	存放用户密码(加密后)	
# 	/etc/group	存放用户组信息		
#
## 总结: 三种文件中分隔符号都是分号

# 1、/etc/passwd	存放用户用户名信息
# 格式:
#	testxxx:x:503:504:测试账号xxx:/home/testxxx:/bin/bash
#	用户名:密码:用户ID:用户属组ID:注释:用户家目录:用户登录后的shell执行文件
# 总结:
##	1) 若用户拥有多个用户组,则/etc/passwd只显示一个用户属组ID(此用户组登录后默认),更换属组需要手动切换(执行: ) 
##	2) 在创建用户时,若未指定用户组(指定的用户组必须已存在,否则报错),则默认建立与用户名同名的用户组,如 useradd test001 ,则建立一个test001用户,同时建立test001用户组
##	3) 为了安全保密, 密码为 x 或者空, 加密后的密码存放在文件 /etc/shadow
##	4) 登陆后shell文件: /bin/bash	表示该用户可登陆; 若为 /sbin/nologin ,表示用户无登陆权限,即不可登陆
##

# 2、/etc/shadow	存放用户密码
# 格式:
#	test002:!!:17765:0:99999:7:::
#	用户名:口令:最后一次修改时间：最小时间间隔:最大时间间隔:警告时间:不活动时间:失效时间:标志
#
# 例子:
#	test001:$6$.H5rMd0K$JnY5CJxA9MAcb7bMj8n55LVi1qjqqk0VwJvUeUPLuWrWEle7uL3vNrdcp8OvQ90v3XsEgd6yP.2TA/eOJqpfJ.:17766:0:99999:7:::	# 存放了加密后口令
#  	testxxx::17766:0:99999:7:::	# 口令被删除时，口令那列为空
#  	test002:!!:17765:0:99999:7:::	# !! : 表示初始化口令,还未设置
#
# 总结:
##	1) 口令: 是加密后的用户口令;若为空，则该用户没有口令，登录时不需要口令；如果含有不属于集合 { ./0-9A-Za-z }中的字符，则对应的用户不能登录。注: CentOS6.8Linux系统登录密码不得为空
##	2) 最后一次修改时间: 从某个时刻起，到用户最后一次修改口令时的天数。时间起点对不同的系统可能不一样。例如在SCO Linux 中，这个时间起点是1970年1月1日。
##	3) 最小时间间隔: 指两次修改口令之间所需的最小天数。
##	4) 最大时间间隔: 指口令保持有效的最大天数。
##	5) 警告时间: 的是从系统开始警告用户到用户密码正式失效之间的天数。
##	6) 不活动时间: 指用户没有登录活动但账号仍能保持有效的最大天数。
##	7) 失效时间: 给出的是一个绝对的天数，如果使用了这个字段，那么就给出相应账号的生存期。期满后，该账号就不再是一个合法的账号，也就不能再用来登录了。



# 3、/etc/group
# 格式:
#	testUsers:x:504:testxxx,test0823,test0823C
#	组名:口令:组标识号:组内列表
#
#
# 总结:
##	1) 组内用户列表: 同一用户组中的用户名,以逗号隔开
##	2) 组标识号: 即GID


# 三、批量添加用户，批量添加密码
# 流程:
#	1) 创建newUsers.txt 存放多个用户信息(文件内容格式参照/etc/passwd); newPasswd.txt 存放多个新用户对应的密码,格式: 用户名1:密码(明文), 有多少用户,就写多少行
#	注意: 以下命令均在root用户下执行
#	2) /usr/sbin/newusers < /mnt/www/shell/userGrounp/newUsers.txt   # 将用户信息导入/etc/passwd文件中	
#	3) pwunconv  	 # 将 /etc/shadow 产生的 shadow 密码解码,然后回写到 /etc/passwd 中，并将/etc/shadow的shadow密码栏删掉。这是为了方便下一步的密码转换工作，即先取消 shadow password 功能
#	4) /usr/sbin/chpasswd < /mnt/www/shell/userGrounp/newPasswd.txt   # 创建用户密码，chpasswd 会将经过 /usr/bin/passwd 命令编码过的密码写入 /etc/passwd 的密码栏。
#	5) /usr/sbin/pwconv	# 将密码编码为 shadow password，并将结果写入 /etc/shadow。
#
#
#
# ？？？shadow的加密算法




# 四、其他命令
## ls [option] [文件目录名(非文件),默认为当前目录]	# 列出目录下所有文件信息
# 常用命令:
#	ls -lh 			# 列出目录下所有文件,并显示文件容量,单位K
#	ls --full-time		# 列出目录下所有文件,并显示完整创建时间
# 	ls -li			# 列出目录下所有文件,并显示文件inode编号
#	ls -ln	  		# 列出目录下所有文件,并显示文件所属用户id和用户组id


## groups 	# 查看所有用户组信息,如: groups testUsers (查看用户组testUsers信息,默认查看所有用户组)
## id 		# 查看用户信息,如: id test001 (查看test001用户信息,默认查看所有用户)
