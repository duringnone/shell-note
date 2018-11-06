#!/bin/bash 

	
# `` , $() 都可以解析并执行linux命令
# echo  $(date);
# echo  `date`;	
# exit



#	 #计算指定月份的上个月天数 
#	if [ "$1" == '' ]	
#	then
#		# 默认上个月的天数
#		currTime=`date +"%Y-%m-%d %H:%M:%S"`;	# 当前时间,年-月-日 时:分:秒
#		today=$(date +"%Y-%m-%d");	# 当前时间
#		day=`date -d "-1 month" +%Y-%m-%d`;	# 显示上个月今天的时间,存在一个漏洞: 当03-31号,此操作无法获取上月天数,因为2月没有31号,此时返回03-01	
#		curr=`date +%s`;
#		last=`date -d "-1 month" +%s`;
#	#	differ=`expr $curr - $last`;
#	#	days=`expr $differ / 60 / 60 / 24`;
#		mins=$(expr $curr - $last );
#		days=$(expr $mins / 24 / 3600);
#		echo $days;
#	else 	
#		# 默认上个月的天数
#		month=$1;
#		curr=`date -d $month +%s`;
#		last=`date -d "-1 month $month" +%s`;	# 获取指定月份的上个月: date -d "-1 month 2018-03-22" +%s	 
#		mins=$(expr $curr - $last );
#		days=$(expr $mins / 24 / 3600);
#		echo $days;	
#	fi






 #计算指定月份的上个月天数(获取上月最后一天的时间,以最后一天日期作为该月天数)
if [ "$1" == '' ]	
then
	# 默认上个月的天数
	currTime=`date +"%Y-%m-%d %H:%M:%S"`;	# 当前时间,年-月-日 时:分:秒
	today=$(date +"%Y-%m-%d");	# 当前时间
	day=`date -d "-1 month" +%Y-%m-%d`;	# 显示上个月今天的时间,存在一个漏洞: 当03-31号,此操作无法获取上月天数,因为2月没有31号,此时返回03-01	

	# 默认上个月的天数
	var=`date "+%Y-%m-01 00:00:00"`;	# 获取当月1号00:00:00的时间字符串
	var2=`date -d "$var" +%s`;		# 将时间字符串转化为unix时间戳
	var3=$(expr $var2 - 1 );		# 获取上月最后一天的23:59:59的unix时间戳
	var4=`date -d @"$var3" +%Y-%m-%d`;	# 将unix时间戳转化为时间字符串(2018-09-01)
# echo $var4;exit;
	days=${var4##*-};			# 截取某月最后一天的日期(如31号),## 表示从左往右,删除最后一个 - 符号左边所有字符(包括最后一个 - 本身),只保留最后一个 - 符号右边的字符
	echo $days;
else 
	
	# 默认上个月的天数
	month=$1;
	date=${month%-*}'-01 00:00:00';		# 删除月份的日期,并拼接上01字符,生成时间字符串(1号00:00:00)
	var2=`date -d "$date" +%s`;		# 获取当月1号00:00:00的unix时间戳
	var3=$(expr $var2 - 1 );		# 获取上月最后一天的23:59:59的unix时间戳
	var4=`date -d @"$var3" +%Y-%m-%d`;	# 将unix时间戳转化为时间字符串(2018-09-01)
	days=${var4##*-};			# 截取某月最后一天的日期(如31号),## 表示从左往右,删除最后一个 - 符号左边所有字符(包括最后一个 - 本身),只保留最后一个 - 符号右边的字符
	echo $days;

fi
