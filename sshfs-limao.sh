# Note:默认bash/sh不支持echo命令内嵌执行，所以需要指定echo命令绝对路径
MntDirRoot=~/server
limao=$MntDirRoot/140ser

if [ ! -d $MntDirRoot ];then
	mkdir $MntDirRoot
fi

umount -f $limao

/bin/echo 12345678 | sshfs limao@172.30.2.140:/home/milky/limao $limao -o workaround=rename -o password_stdin

# Note:默认bash/sh不支持echo命令内嵌执行，所以需要指定echo命令绝对路径
MntDirRoot=~/server
limao=$MntDirRoot/141ser

if [ ! -d $MntDirRoot ];then
	mkdir $MntDirRoot
fi

umount -f $limao

/bin/echo 12345678 | sshfs limao@172.30.2.141:/home/mercury/limao $limao -o workaround=rename -o password_stdin


# Note:默认bash/sh不支持echo命令内嵌执行，所以需要指定echo命令绝对路径
MntDirRoot=~/server
limao=$MntDirRoot/142ser

if [ ! -d $MntDirRoot ];then
	mkdir $MntDirRoot
fi

umount -f $limao

/bin/echo 12345678 | sshfs limao@172.30.2.142:/home/venus/limao $limao -o workaround=rename -o password_stdin
