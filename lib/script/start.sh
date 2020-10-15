#!/bin/bash
apt update  && \
apt install -y zsh && \
chsh -s /bin/zsh  && \
# 官方地址https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
# 官方地址经常报错，所以使用个人github地址
sh -c "$(curl -fsSL https://raw.githubusercontent.com/iliuyt/blog/master/lib/script/ohmyzsh/install.sh)"  && \
# 自动补全插件
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && \
sed -i '/plugins=(git)/ a\plugins=(zsh-autosuggestions)' ~/.zshrc && \
# 主机名修改
cp ~/.oh-my-zsh/themes/robbyrussell.zsh-theme ~/.oh-my-zsh/themes/myrobbyrussell.zsh-theme  && \
sed -i 's/➜/>>>/g' ~/.oh-my-zsh/themes/myrobbyrussell.zsh-theme && \
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="myrobbyrussell"/g' ~/.zshrc && \
# docker 自定义快捷命令安装
curl -o ~/.mydkrc  https://raw.githubusercontent.com/iliuyt/blog/master/lib/script/.mydkrc && \
echo '. ~/.mydkrc' >> ~/.zshrc && \
source ~/.zshrc && \
# docker 安装
curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun && \
# docker-compose 安装
curl -L https://get.daocloud.io/docker/compose/releases/download/1.24.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose && \
chmod +x /usr/local/bin/docker-compose  && \

# 创建文件夹
mkdir -p ~/tools  && \
mkdir -p ~/tmp  && \
mkdir -p ~/docker/nginx/data  && \
mkdir -p ~/docker/redis/data  && \
mkdir -p ~/docker/mysql/data  && \
mkdir -p ~/docker/mongodb/data  && \
mkdir -p ~/docker/drone/data  && \
