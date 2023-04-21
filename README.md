# Muchat
团队版 ChatGPT Web 应用，多用户，免登录。适合公司、组织或小团体内部使用。

- [加入交流群](#技术交流群)  
- [捐赠](#捐赠)  

## 特性
- 无需登录，输入卡密即可使用
- 支持上下文
- 支持多分站
- 3个维度限制用户使用量
- 可同时使用多个 API-KEY
- 后台可查看用户使用量
- 支持匿名试用，可设置试用次数

# Docker 开发环境搭建（推荐）
```
cd /var/www/muchat

git clone https://github.com/panyanyany/muchat-aio          # all in one, 从这里启动整个系统
git clone https://github.com/panyanyany/muchat-go           # Go 语言实现的接口
git clone https://github.com/panyanyany/muchat-react        # React 实现的用户侧 UI
git clone https://github.com/panyanyany/muchat-laravel      # Laravel 实现的后台管理 UI

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

> 注意：这个位置可以插入购买链接。

# 最终用户界面

![](./assets/img/%E7%94%A8%E6%88%B7%E7%95%8C%E9%9D%A2.jpg)

## TODO
- [ ] 支持AI绘画
- [ ] 可保存聊天记录
- [ ] 支持多个对话
- [ ] 支持预设 Prompt
- [ ] 接入支付

# 技术交流群

添加好友，拉你进群：

![](./assets/img/wechat.jpg)

# 捐赠

![](./assets/img/alipay.jpg)
![](./assets/img/wechatpay.jpg)