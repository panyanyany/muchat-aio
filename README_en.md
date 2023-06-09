# Muchat
Team version of ChatGPT web application- multi-user and no log-in required. Suitable for internal use in companies, organizations or small groups.  

## Features
- No need to log in, just enter the access key to activate.
- Support anonymous trial and set the number of trials allowed.
- Support contextual analysis.
- Support sensitive word filtering.
- Support multiple subdomains.
- Support limiting the number of uses and validity period for users.
- Support multiple API-KEYs.
- Support checking user usage in the background.
- Support preset prompts.

# Installation Guide: Docker

Hardware environment：
- I recommend [DigitalOcean](https://m.do.co/c/d353e23d928f) (new users can receive $200 in credits for free!).
- 1 core 2G or more

Software dependencies：
- Based on Ubuntu

The following command has been confirmed to be accurate on the [DigitalOcean](https://m.do.co/c/d353e23d928f) 1C2G VPS.

```bash
# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# Install this project
mkdir -p /var/www/muchat && cd /var/www/muchat

git clone https://github.com/panyanyany/muchat-aio.git
cd muchat-aio
cp .env.example .env # If you are deploying on a server, please edit the REACT_APP_API_ENDPOINT in the .env file to set your server's IP address.
sudo docker compose up
# Ctrl + C to stop the entire system
```
  
- When the console displays the following message, it indicates that the startup is successful：
![](./assets/img/allup.jpg)

- Access web UI： http://localhost:3000  
- Access admin panel： http://localhost:8000/admin
    - Account：admin@admin.com
    - Password：admin
    - Note: please change your password.