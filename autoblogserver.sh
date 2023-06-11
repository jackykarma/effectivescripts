#!/usr/bin/expect -f

set password JennyLee88.. 
set timeout -1

spawn ssh root@120.25.162.10
expect "*assword:*"
send "$password\r"
interact
