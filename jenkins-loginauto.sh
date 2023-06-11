#!/usr/bin/expect -f

#set port port_no
set user admin
set host 10.10.1.173
set port 50022
set password ubt123456 
set timeout -1
# spawn 启动新的进程
# 出现密码输入提示
# 发送密码
#expect eof 等待接收文件结束符，如果此句不屏蔽，那么将会无法输入ctrl+c就会退出服务器的ssh连接进程
# 停留在服务器 交互模式，用户停留在远程服务器上面
spawn ssh $user@$host -p $port
expect "*assword:*"
send "$password\r"
interact
