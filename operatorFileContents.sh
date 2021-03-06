#!/bin/bash 

 #操作文件内容命令 
# cat 从上到下显示文件所有内容 （重用 -n,-b）
# tac 从下到上显示文件所有内容
# nl  显示文件所有内容和控制行号显示（cat 也可以）
# more 一页一页翻动
# less 一页一页翻动
# head 从上到下显示固定行数量的内容（默认显示10行）
# tail 从下到上显示固定行数量的内容（默认显示10行）





# 1、 cat 查看文件内容 [(从上到下)正序显示]
## 格式：cat [option] 文件路径 
## 常用参数：1) -b 原样输出文件内容,并给所有行标注行号,不包括空白行;  2) -n : 原样输出文件内容，并给所有行标注行号，包括空白行






# 2、 tac 查看文件内容  [(从下到上)逆序显示], 提示: tac 刚好是 cat 反过来
## tac [option] 文件路径
## 常用参数： 1) 




# 3、 nl	查看文件内容的行号
## 格式：nl [option] 文件路径名	, 
##nl有三种模式:
##	-n(行号显示位置),
###	-n ln	行号显示在屏幕最左边,行号不加0		
###	-n rn	行号显示在屏幕最左边,行号不加0		
###	-n rz	行号显示在屏幕最左边,所有行号为6位数,前以0拼接,如:78->000078 	

##	-b(行号显示模式),  
###	-b a 	显示所有行的行号,包括空白行		
###	-b t 	显示所有非空白行的行号,即空白行行号不显示		

##	-w(行号栏位占用的位数)



# 4、 more	分页显示文件内容
## 格式：more 文件路径名
## 可在more命令下执行以下命令:
## 	命令		功能
## 	Enter		向下翻一行	
##	/字符		向下查找字符串
##	:f 		立刻显示当前光标所处行号,并显示当前文件路径名
##	b 或 ctrl+b	往回翻(相当于上一页)
##	q		退出more命令	



# 5、 less	一页一页地翻动,和more 功能相似，但是更丰富
## 格式：less 文件路径
## 该命令运行时可输入命令有：
##	命令		功能	
## 	pageup		向上翻动一页：	 pageup
## 	空白键; 	向下翻动一页：
##	pagedown	向下翻动一页：
##	?字符		向上搜索字符串： ?字符
##	/字符		向下搜索字符串： /字符
##	n		重复前一个搜索命令(/ 或 ?)
##	N		反向重复前一个搜索命令(/ 或 ?)
##      q		离开less程序


# 6、 head 显示文件内容，行数从上到下计算，默认显示10行
## 格式：head [-n number] 文件路径	number 表示显示的行数，行数从上到下计算，默认显示10行



# 7、 tail 显示文件内容，行数从下到上计算，默认显示10行
## 格式：tail [-n number] 文件路径	 number 表示显示的行数，行数从下到上计算，默认显示10行
