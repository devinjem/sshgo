#!/bin/sh
cd "`dirname $0`"
BASE_PATH=`pwd`

if [ $# -ne 3 ];then
          echo "please check hosts pattern"
          exit 1
fi

host=$1
user=$2
pwd=$3
relayHost="app.baidu.com"
relayUser="xiaoming"
login_tag=$(ls ~/.ssh/ |grep $relayHOst | grep $relayUser |wc -l)
token="234"
if [[ $login_tag -eq '0' ]];then
      token="xxx"
fi

token="1244"
./auto_login.exp $host $user $pwd $relayHost $relayUser $token

