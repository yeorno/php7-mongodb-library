#!/bin/sh

# set -e
DO_WEB=1
DO_PHONE=1

DEBUG_JSON_DECODE=" | (read -r str;echo \"Raw:
\$str\"; echo \"Json:\";echo \"\$str\" | jshon)"

rm -f $PWD/cookie.txt

color_print() {
echo -e "\033[44;37;5m ${1} \033[0m"
}


# register
color_print "register"
eval curl -k \
	-d "action=register" \
	-d "username=user1" \
	-d "password=123456789" \
	-d "password_cf=123456789" \
	-d "email=522184309@qq.com" \
	-d "phone=13252090010" \
	-L "https://github.com/server.php" $DEBUG_JSON_DECODE


# user_login
color_print "user_login"
login_str=$(
curl --silent \
	-c $PWD/cookie.txt \
	-b $PWD/cookie.txt -k \
	-d "action=user_login" \
	-d "username=user1" \
	-d "password=123456789" \
	-L "https://github.com/server.php"
)
echo "# 登录反馈"
eval echo '$login_str' $DEBUG_JSON_DECODE
session=$(echo "$login_str" | jshon -e "session" -u)
if [ -z "$session" ];then
echo "没有 session"
exit
fi

# session=user1+user111111			# 阻止手机端
# rm -f cookie.txt ;touch  cookie.txt	# 阻止web

# user_info
if [ ${DO_WEB:-0} -eq 1 ];then
color_print "user_info -web"
eval curl -k \
	-b $PWD/cookie.txt  \
	-d "action=user_info" \
	-d "username=user1" \
	-L "https://github.com/server.php" $DEBUG_JSON_DECODE
fi
if [ ${DO_PHONE:-0} -eq 1 ];then
color_print "user_info -phone"
eval curl -k \
	-d "session=$session" \
	-d "action=user_info" \
	-d "username=user1" \
	-L "https://github.com/server.php" $DEBUG_JSON_DECODE
fi

# reset_pwd
if [ ${DO_WEB:-0} -eq 1 ];then
color_print "reset_pwd -web"
eval curl -k \
	-b $PWD/cookie.txt  \
	-d "action=reset_pwd" \
	-d "username=user1" \
	-d "old_password=123456789" \
	-d "new_password=123456789" \
	-d "new_password_cf=123456789" \
	-L "https://github.com/server.php" $DEBUG_JSON_DECODE
fi
if [ ${DO_PHONE:-0} -eq 1 ];then
color_print "reset_pwd -phone"
eval curl -k \
	-d "session=$session" \
	-d "action=reset_pwd" \
	-d "username=user1" \
	-d "old_password=123456789" \
	-d "new_password=123456789" \
	-d "new_password_cf=123456789" \
	-L "https://github.com/server.php" $DEBUG_JSON_DECODE
fi
# forget_pwd
if [ ${DO_WEB:-0} -eq 1 ];then
color_print "forget_pwd -web"
eval curl -k \
	-b $PWD/cookie.txt  \
	-d "action=forget_pwd" \
	-d "username=user1" \
	-d "new_password=123456789" \
	-d "new_password_cf=123456789" \
	# -d "email=522184309@qq.com" \
	-L "https://github.com/server.php" $DEBUG_JSON_DECODE
fi
if [ ${DO_PHONE:-0} -eq 1 ];then
color_print "forget_pwd -phone"
eval curl -k \
	-d "session=$session" \
	-d "action=forget_pwd" \
	-d "username=user1" \
	-d "new_password=123456789" \
	-d "new_password_cf=123456789" \
	# -d "email=522184309@qq.com" \
	-L "https://github.com/server.php" $DEBUG_JSON_DECODE
fi

# product
# if [ ${DO_WEB:-0} -eq 1 ];then
# color_print "product -web"
# eval curl -k \
# 	-b $PWD/cookie.txt  \
# 	-d "action=product" \
# 	-L "https://github.com/server.php" $DEBUG_JSON_DECODE
# fi
# if [ ${DO_PHONE:-0} -eq 1 ];then
# color_print "product -phone"
# eval curl -k \
# 	-d "session=$session" \
# 	-d "action=product" \
# 	-L "https://github.com/server.php" $DEBUG_JSON_DECODE
# fi

# get_servers_list
if [ ${DO_WEB:-0} -eq 1 ];then
color_print "get_servers_list -web"
eval curl -k \
	-b $PWD/cookie.txt  \
	-d "action=get_servers_list" \
	-L "https://github.com/server.php" $DEBUG_JSON_DECODE
fi
if [ ${DO_PHONE:-0} -eq 1 ];then
color_print "get_servers_list -phone"
eval curl -k \
	-d "session=$session" \
	-d "action=get_servers_list" \
	-L "https://github.com/server.php" $DEBUG_JSON_DECODE
fi


# get_cfg_by_city
if [ ${DO_WEB:-0} -eq 1 ];then
color_print "get_cfg_by_city -web"
eval curl -k \
	-b $PWD/cookie.txt  \
	-d "action=get_cfg_by_city" \
	-d "city=广州市" \
	-L "https://github.com/server.php" $DEBUG_JSON_DECODE
fi

if [ ${DO_PHONE:-0} -eq 1 ];then
color_print "get_cfg_by_city -phone"
eval curl -k \
	-d "session=$session" \
	-d "action=get_cfg_by_city" \
	-d "city=广州市" \
	-L "https://github.com/server.php" $DEBUG_JSON_DECODE

fi

if [ ${DO_PHONE:-0} -eq 1 ];then
color_print "sendemail -phone"
eval curl -k \
	-b $PWD/cookie.txt  \
	-d "action=sendemail" \
	-d "email=522184309@qq.com" \
	-L "https://github.com/server.php" $DEBUG_JSON_DECODE

fi
if [ ${DO_PHONE:-0} -eq 1 ];then
color_print "sendemail -phone"
eval curl -k \
	-d "session=$session" \
	-d "action=sendemail" \
	-d "email=522184309@qq.com" \
	-L "https://github.com/server.php" $DEBUG_JSON_DECODE

fi




