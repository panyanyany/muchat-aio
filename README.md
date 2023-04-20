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

- 当控制台出现如下提示，表示启动成功：
![](./assets/img/allup.jpg)

- 访问 Web UI： http://localhost:3000  
- 访问 管理后台： http://localhost:8000/admin
    - 账号：admin@admin.com
    - 密码：admin
    - 注意：记得改密码

# 添加 API-KEY
打开 http://localhost:8000/admin/muchat/open_ai_accounts/create

填写2个必填字段：
![](./assets/img/OpenAi%E8%B4%A6%E5%8F%B7%E7%AE%A1%E7%90%86-Add.jpg)

# 添加卡密
打开 http://localhost:8000/admin/muchat/muchat_users/create

单击【生成】自动生成 slug 作为用户登录的唯一凭证（即激活码）

![](./assets/img/%E7%94%A8%E6%88%B7%E7%AE%A1%E7%90%86-Add.jpg)

剩下3项非必须，不填则不限制：
- Max usage: 最大提问次数
- Max days: 最大有效天数（自激活时算起，不激活则不计算）
- Expires at: 过期时间，当用户第一次使用时，会根据 Max days 自动计算

# 使用（用户侧）
打开 http://localhost:3000/

![](./assets/img/%E8%BE%93%E5%85%A5%E6%BF%80%E6%B4%BB%E7%A0%81.jpg)

这里的激活码，就是刚刚生成的 slug