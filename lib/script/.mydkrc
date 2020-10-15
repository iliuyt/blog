
# 删除容器
alias dkrm=docker_rm
docker_rm() {
  docker stop $1 && docker rm $1 && docker ps -a
}

# 删除所有容器
alias dkrmall=docker_rm_all
docker_rm_all() {
  docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q) && docker ps -a
}
# 获取容器信息
alias dkinfo='docker inspect $1'
# 获取容器ip
alias dkip='docker inspect $1 | grep IPAddress'
# 查看所有容器
alias dkall='docker ps -a'
# 重启docker
alias dkrs='docker restart $1'
alias dklog='docker logs --tail=100 $1'
alias dkst='docker stop $1'
alias dki='docker images'
alias dkrmi='docker rmi $1'
alias dkclear=docker_rmi_none
# 进入容器
alias dkex=docker_exec
alias dkex2=docker_exec2
docker_exec(){
  docker exec -it $1  /bin/bash
}
docker_exec2(){
  docker exec -it $1  /bin/sh
}

docker_rmi_none(){
  docker rmi $(docker images -f "dangling=true" -q)
}
