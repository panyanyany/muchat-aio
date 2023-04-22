# Muchat
团队版 ChatGPT Web 应用，多用户，免登录。适合公司、组织或小团体内部使用。

> *有人乍一看目录觉得只是发布了个 exe，但实际代码在各个子仓库中，本仓库只是一个入口*

- [加入交流群](#技术交流群)  
- [捐赠](#捐赠)  

## 特性
- 无需登录，输入卡密即可使用
- 支持匿名试用，可设置试用次数
- 支持上下文
- 支持敏感词过滤
- 支持多分站
- 支持限制用户使用次数、有效期
- 支持多个 API-KEY
- 支持后台查看用户使用量

# 安装教程：Docker 开发环境搭建（推荐）

硬件环境：
- 推荐 [阿里云香港](https://www.aliyun.com/daily-act/ecs/activity_selection?userCode=d3lnfvg1) 或者 [DigitalOcean](https://m.do.co/c/d353e23d928f)
- 突发性能实例最好是 4C8G

软件依赖：
- 安装 [Docker](https://docs.docker.com/engine/install/ubuntu/)
- 如果是大陆境内，需要**科学环境**

ssh 登录到服务器，输入以下命令：

```bash
cd /var/www/muchat

git clone https://github.com/panyanyany/muchat-aio          # all in one, 从这里启动整个系统
git clone https://github.com/panyanyany/muchat-go           # Go 语言实现的接口
git clone https://github.com/panyanyany/muchat-react        # React 实现的用户侧 UI
git clone https://github.com/panyanyany/muchat-laravel      # Laravel 实现的后台管理 UI

cd muchat-aio
cp .env.example .env
# 如果你是在服务器部署，请编辑 .env 里的 REACT_APP_HOSTNAME 以设置你的服务器 IP
docker compose up
# Ctrl + C 停止整个系统

# 一键停止整个系统，并移除所有 image，相当于重置了 docker 环境。但仓库文件未重置，需要单独 rm -rf repo
docker compose down --rmi all
```
> 注意：如果仓库有更新，请直接 rm -rf 整个仓库，再重新 clone。  


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
- [ ] 可保存聊天记录
- [ ] 支持多个对话
- [ ] 支持按 Token 计费
- [ ] 支持 stream
- [ ] 支持AI绘画
- [ ] 支持预设 Prompt
- [ ] 接入支付

# 技术交流群

添加好友，拉你进群：

![](./assets/img/wechat.jpg)

# 捐赠

![](./assets/img/alipay.jpg)
![](./assets/img/wechatpay.jpg)