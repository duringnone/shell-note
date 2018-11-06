#!/bin/bash 

 # vim命令笔记 


# 三种模式:
#	类型		进入模式的命令	  标志
#	命令模式	vim 文件名	进入到文件内部
#	输入模式	i,o,a 		窗口左下角出现 --insert-- 或 --插入--
#	底线命令模式	:		窗口左下角出现 : 





# 1、命令模式: <j> 表示 j 键(需要区分的地方使用,默认字符不使用)

# 	命令		功能
#

# 屏幕移动	
##	Ctrl + <f>	屏幕向下移动一页,相当于PageDown
##	Ctrl + <b>	屏幕向上移动一页,相当于PageUp
##	Ctrl + <d>	屏幕向下移动半页,down
##	Ctrl + <u>	屏幕向上移动半页,up
##
##	>>		缩进	
##	<<		取消缩进
##	
##

# 光标移动
##	n<j>		光标向下移动 n 行,相当于 n + 方向下键; (h --左, j --下, k --上, l --右)
##	n<空格>	光标向后(右)移动n个字符,若本行字符不足,则继续移动到下一行, 如: 10+<空格> # 光标后移10个字符
##	+		光标移动到下一行(实测:下一行可为空格行)
##	-		光标移动到下一行
##	0		光标移到本行第一个字符处,等同于<Home>
##	$		光标移到本行最后一个字符处,等同于<End>
##	H		光标移动到屏幕最上方那行的第一个字符处	
##	M		光标移动到屏中间那行的第一个字符处	
##	L		光标移动到屏幕最下方那行的第一个字符处	
##	G		光标移动到 文件最后一行; 先用 :set nu 显示文件行号
##	n<G>		光标移动到 文件 第 n 行
##	gg		光标移动到 第一行
##	n<Enter>	光标向下移动 n 行	

# 搜索替换 (向上向下,是相对于光标而言)
##	/ding		向下搜索字符ding;
##	?ding		向上搜索字符ding;
##	<n> 		下一个搜索的字符(沿着搜索方向:/ 搜索时,向下; ? 搜索时,向上)
##	<N> 		上一个搜索的字符(沿着搜索方向)
##	:m,n<s>/findStr/replaceStr/g	在第 m 行 到 第 n 行之间区域,查找findStr ,并将其替换成replaceStr; 例如: :10,20s/'666'/'777'/g	# 将第10行到第20行区域内的字符'666'全都替换成'777'
##	
##	:1,$s/findStr/replaceStr/g	# 全文替换:从第1行到最后一行搜索findStr,并替换成replace	
##
##	:1,$s/findStr/replaceStr/gc	# 全文替换:从第1行到最后一行搜索findStr,并替换成replace, c confirm 每次替换需要用户确认,若有五次替换,需要五次确认,确认过才替换
##	
##	

# 删除
##	x		向后删除一个字符,(实测: 删除当前光标位置的字符)
##	X		向前删除一个字符
##	n<x>		连续向后删除 n 个字符(从当前位置开始,包含当前位置),n表示删除字符个数
##	n<X>		连续向前删除 n 个字符,(不包含当前位置)
##	dd		删除当前行
##	n<d><d>		同时删除 n 行,n表示行数;如: 10dd 表示删除10行(当前行向下数)
##	<d>n<G>		n 为数字,删除第 n 行; n=1表示文件第一行,n=G表示文件最后一行	
##	dG		删除 当前行 到 文件最后一行的内容
##	d$		删除当前行(的当前字符到行尾)部分,包含当前字符
##	d0		删除当前行(的当前字符到行首)部分,不包含当前字符
##
##
	
# 复制
##	yy		复制当前行内容
##	n<y><y>		n为行数,复制 n 行(从当前行开始往下数)内容
##	<y>n<G>		n为行号,复制第 n 行内容		
##	yG		复制当前行到文件最后一行的内容
##	y0		复制光标到行首的内容,不包含当前字符
##	y$		复制光标到行尾的内容,包含当前字符
##
##

# 粘贴
##	p		向下粘贴;例如: 光标在第20行处, 10yy 复制了10行; 按下p,则粘贴内容从第21行开始,截止到第30 行,原第20行之后的内容,均向后移动10行 (如: 原第 21 行~第 30 行向后移动,变成第31~40行)
##	P		向上粘贴;结果类似 p 
##	J		将当前行和下一行 合并成一行(并用空格分隔当前行和下一行的内容);例如:在第 20行 执行 J  ,则会将第21 行内容合并到 第 20 行行尾,同时用 空格隔开两行内容
##	c		重复删除多个数据, 例如向下删除 10 行: 10cJ 或 10c+<方向下键>
##	u		撤回,复原前一个动作
##	<Ctrl>r		重复上一个动作
##	.		口水点,重复上一个动作;  注: 只重复动作,不重复内容,如上一步是在第20行4dd(删除了第21~24行),当把光标移动第31行,会把第31~34行删除
##
##



# 2、编辑模式(输入模式,取代模式)
#
#	命令		功能
#	
# 进入输入模式
##	i		从当前光标处输入
##	I		从当前行的第一个非空字符处输入
##	a		当前位置的下一个字符处输入
##	A		当前行最后一个字符处输入
##	o		当前行的下一行输入,并另起一行; 例如: 当前行为第20行,输入o,会在原地20行和第21行之间新建一行,为新的第21行,原第21行变为第22行,且原行号大于等于21行的均向下移动一行 
##	O		当前行的上一行输入,插入新的一行; 例如: 当前行为第20行,输入O,会在原地19行和第20行之间新建一行,为新的第20行,原第20行变为第21行,且原行号大于等于20行的均向下移动一行  	
##
##

# 进入取代模式
##	r		只会取代当前位置的字符一次; 注:先按<r>, 再输入替代的字符					
##	R		会不断地取代当前位置的字符,直到按下<Esc>取消; 注: 先按<R>,再按替代的字符,只作用于当前行,不会自动跳转到下一行
##	<Esc>		退出当前模式(编辑模式/底部命令模式),回到命令模式
##
##
# 注意:
##	1) 输入模式时,左下角会出现 '-- Insert --' 或 '-- 插入 --'  标志
##	2) 替代模式时,左下角会出现 '-- Replace --' 或 '-- 替代 --'  标志
##




# 3、底部命令模式(均以:开头)
#
#	命令		功能

# 保存,退出
##	:w		将数据保存到硬盘中
##	:w!		强制保存(一般用于只读权限时写入操作)
##	:q		退出当前文件(离开vim 界面)
##	:q!		强制退出(一般用于离开时,不保存修改记录)
##	:wq		保存文件,并离开
##	ZZ		若文件有更改,则保存更改并离开,若没有更改,则不保存并离开

# 同时操作其他文件
##	:w [filename]	将编辑的数据保存到另一个文件中(filename); 注: [] 表示可选参数,若filename 参数存在,则操作指定文件(fileaname),若无参数时则默认操作当前文件
##	:r [filename]	在当前文件中,插入另一个文件(filename)的数据,插入位置为当前位置的下一个字符处; r--read;  注: [] 表示可选参数,若filename 参数存在,则操作指定文件(fileaname),若无参数时则默认操作当前文件
##	:m,n <w> [filename]	将第m 行到第 n 行的内容写入filename 这个文件中
##	:! command	暂时离开----------------------------
##	:set nu		显示当前文件的所有行号
##	:set nonu	隐藏当前文件的所有行号	
##
##
# 注意:
##	1)  ! 		# 表示强制 (在vim 窗口) 
##	2) :r [filename]  	# [] 表示可选参数,若filename 参数存在,则操作指定文件(fileaname),若无参数时则默认操作当前文件
##	3) :w [filename]  	# [] 表示可选参数,若filename 参数存在,则操作指定文件(fileaname),若无参数时则默认操作当前文件


# -------------------	读取文件测试	----------------------------
#
# # # # #





# -------------------	写入文件测试	----------------------------
