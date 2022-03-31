#!/usr/bin/env bash
# 该脚本用来提升github的访问速度

ROOT_UID=0 # 只有用户变量$UID为0的用户才有root权限
E_NOROOT=67 # 不是root用户退出码
if [ $UID -ne $ROOT_UID ]
then 
    echo "必须以root身份运行该脚本"
    exit $E_NOROOT
fi
   
filename="/etc/hosts"
content=$(grep github.com $filename)
github=$(nslookup github.com | grep Address | grep -v '#' | sed -e s/\"}/\\n/g -e s/[^0-9\.\\n]//g)"   github.com"
github_global_ssl_fastly_net=$(nslookup github.global.ssl.fastly.net| grep Address  | grep -v '#'  | sed -e s/\"}/\\n/g -e s/[^0-9\.\\n]//g)"   github.global.ssl.fastly.net"
echo $github >> $filename
echo $github_global_ssl_fastly_net >> $filename
tail $filename
exit 0
