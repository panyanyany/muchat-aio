fail() {
    name=$1
    echo '-----------------------------------------------'
    echo "---------- '${name}' failed to start! ----------"
    echo '-----------------------------------------------'
    exit 1
}

/wait-for -t 60 http://api:8080 
if [ $? -ne 0 ]; then
    fail 'api'
fi
/wait-for -t 60 http://admin:8000/admin/login
if [ $? -ne 0 ]; then
    fail 'admin'
fi
/wait-for -t 60 http://web:3000
if [ $? -ne 0 ]; then
    fail 'web'
fi

if [ $? -eq 0 ]; then
    sleep 5
    echo '--------------------------------------------------------------------'
    echo '------------ 系统全部启动成功！ System started successfully ----------'
    echo '--------------------------------------------------------------------'
else
    echo '-----------------------------------------------------------'
    echo '----------- 系统启动失败！ System failed to start ----------'
    echo '-----------------------------------------------------------'
fi

sleep 999999