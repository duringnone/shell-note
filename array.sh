#!/bin/bash

#数组
# 1、定义数组
## 1) 数组以小括号定义,以空格符分隔元素,数组变量相同后面覆盖前面
## 2) 数据下标默认从0开始, @获取数组所有元素,
## 3) 当一维数组arr中内嵌另一个一维数组arr2时，只取arr2的第0位元素作为arr2在arr中的元素，也就是说shell脚本中只有一维数组，没有多维数组
arr1=(12 34 56 78);
arr1=(12,34,56,78 234--dsafd);
arr2=(
'jgg'
11
22
33
44
);
arr3=('a' 'b' 'name' ${arr2}); # 二维数组
# 2、获取数组元素:
##	1) 元素值=${arr[键名]}
##	2) ${arr[@]}	# @表示数组所有值
#echo ${arr1[1]};
#echo ${arr2[1]};
#echo ${arr2[@]};
echo ${arr3[2]};
echo ${arr3[@]};

# 获取数组元素总个数
strLen=${#arr1[0]};	# 获取数组某个元素的长度
strLen2=${#arr3[3]};	# 获取数组某个元素的长度
count=${#arr3[@]};
count2=${#arr2[*]};
#echo ${strLen}; 
#echo ${strLen2}; 
#echo ${count}; 
#echo ${count2}; 
