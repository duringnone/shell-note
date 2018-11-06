#!/bin/bash 

 #检测ip所对应的主机是否开机 

read -p '请输入一个主机的 IP : ' IP ;
ping $IP -w ls &> /dev/null && echo '开机' || echo '关机';

