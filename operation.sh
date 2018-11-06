#!/bin/bash

# shell 文件的四则运算

# 加,减
## 1) 加/减号和两个加数/减数之间必须留有空格,不能写成 1+2 , 必须写成 1 + 2 ,
## 2) 比较两个数字时m,n时，即$m == $n，两数字相等返回true,打印输出1，不相等返回false,打印输出0 
var1=11;
var2=22;
sum=`expr $var1 + $var2`
sum2=`expr 1+2`;
jian=`expr 34 - 2`;
jian2=`expr 21-1`;
echo 'sum1和为:'$sum; 
echo 'sum2和为:'$sum2;
echo 'jian差为:'$jian;
echo 'jian2差为:'$jian2;


# 乘,除
## 1) 乘积符号为:  1 \* 2 才有效,
chunk=`expr ${var1}*${var2}`;
chunk2=`expr ${var1} * ${var2}`;
chunk3=`expr ${var1} \* ${var2}`;
chu=`expr 6 / 2`;
echo '乘积一为:'$chunk;
echo '乘积二为:'$chunk2;
echo '乘积二为:'$chunk3;
echo '除法1结果为:'$chu;

# 取余,
var3=3;
yu=`expr 4 % $var3`;
yu2=`expr 4%$var3`;
echo '取余1为:'$yu;
echo '取余2为:'$yu2;


# 赋值,比较符
var4=4;
b=$var4;
a=23;
c=$a;
cmp=`expr $a == $c`;
cmp2=`expr$a != $c`;


echo '变量赋值后为:'$b;
echo '等于符号结果:'$cmp; 
echo '等于符号结果2:'; 
echo '不等于符号结果:'$cmp2; 
echo '不等于符号结果2:';

m=3;
n=5;
k=$n;
echo $k;
echo $n;
echo [ $m == $n ]; # ？？？？？ 
echo `expr $m == $n `; 
echo `expr $k == $n `; 
echo [ $m != $n ]; 
