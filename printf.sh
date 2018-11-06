#!/bin/sh

# printf输出,类似C语言的printf函数,
## 格式: printf format-string [arguments]	# format-string:格式控制字符串;arguments:参数列表
## 1) 替代格式符: %d %c %s %f , 如: %-10s指一个宽度10个字符(-表示对齐,任何字符都会被显示在10个字符宽的字符内,若不足则自动以空格填充,若超过也会将内容全部显示出来); 再如:%-4.2f指格式化为小数,其中.2指保留2位小数

# 1、例子,  
## 注意:printf需要手动加换行,echo 可以自动换行
echo 'this is a phper-1';	
printf "this is a phper-2\n";	


printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg;
printf "%-10s %-8s %-4.2f\n" 小哥哥1111111111111111rens  男 66.1213;
printf "%-10s %-8s %-4.2f\n" 小姐姐 女 43.2131;
printf "%-10s %-8s %-4.2f\n" 小妹妹 女 32.2222;



# 2、format-string 双引号
printf "%d %s\n" 1 "abc"; 	# 双引号
printf '%d %s\n' 1 "abc";	# 单引号和双引号效果一样
printf   %s \n aaa \n;		
printf  %d  143;		# 不使用引号时,当前行单独打印无效,
printf '%s\n' 'sss';		# 打印时,会将上面两行没有引号的数据一起输出

printf "%s\n" ding jiang;	# 分两行输出:ding  jaing, %s\n表示输出一个字符且换行,字符以空格间隔;一个格式符,多个参数,则表示所有参数都使用这种格式输出,注意格式符为: %s\n , 而不是 %s
printf "%s %s %s\n" this is my file that is used to be test; #3个字符为一行输出,整个双引号中的内容为格式符

## 若没有arguments ,那么 %s 用NULL代替, %d 用0代替
printf "%s和%d\n";	# 输出"和0",其中NULL不显示


# 3、转义符号：
printf "a string, no processing:<%s>\n" "A\nB";
printf "a string, noprocessing:<%b>\n" "A\nB";
printf "a string, noprocessing:%b\n" "this is dingjiang"; # 将%b用后面的参数替换掉,输出 this is dingjiang
printf "www.baidu.com \a \n";


# 所有转义符号例子
## 1) \a-警告字符; \b-后退; \c-抑制; \f-换页; \n-换行; \r-回车; \t-水平制表符; \v-垂直制表符; \\-反斜杠字符; \ddd-表示1到3位数八进制值的字符,仅在格式符中有效; \0ddd-表示1到3位的八进制字符
printf "this is \a my name" "人生"; 
printf '\n';
printf "this is \b my name" "人生";
printf '\n';
printf "this is \c my name" "人生";
printf '\n';
printf "this is \f my name" "人生";	
printf '\n';
printf "this is \n my name" "人生";
printf '\n';
printf '\n';
printf '\n';
printf '\n';
printf '\n';
printf '\n';
printf '\n';
printf "回车:this is \r my name" "人生";
printf '\n';
printf "this is \t my name" "人生";
printf '\n';
printf "this is \v my name" "人生";
printf '\n';
printf "this is \\ my name" "人生";
printf '\n';
printf "this is \ddd my name" "人生";
printf "\ddd" 03243;
printf '\n';
printf "\0ddd" 03232;
printf '\n';
 
