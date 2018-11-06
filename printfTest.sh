#/bin/bash 

 #这是shell脚本自动创建的文件
## 测试printf函数 和 awk
#printf '%d' 65;

cd /mnt/www/shell
df -lh | awk '{print $2}' 	# awk '{print $1}' 表示输出第一列的出参数
#ps -ef | awk '{print $1}';
