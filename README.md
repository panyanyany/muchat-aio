# Docker 部署 （推荐）
```
cd /var/www/muchat

git clone https://github.com/panyanyany/muchat-aio
git clone https://github.com/panyanyany/muchat-go
git clone https://github.com/panyanyany/muchat-react
git clone https://github.com/panyanyany/muchat-laravel

cd muchat-aio
docker compose up
```

当控制台出现如下提示，表示启动成功：  
  
![](./assets/img/allup.jpg)

访问 Web UI： http://localhost:3000  
访问 管理后台： http://localhost:8000/admin