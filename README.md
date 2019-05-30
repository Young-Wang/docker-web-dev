# 前端开发环境 Docker 镜像配置

基于 Node Docker 镜像，添加常用的配置以及开发工具等，提供统一的前端开发环境。

## 开始使用

**1**. **安装 Git、Docker、Docker Compose**

请参考 [Git 安装教程](https://git-scm.com/book/zh/v1/%E8%B5%B7%E6%AD%A5-%E5%AE%89%E8%A3%85-Git)、[Docker 安装教程](https://docs.docker.com/v17.12/install/)、[Docker Compose 安装教程](https://docs.docker.com/compose/install/)

**2.** **获取 Docker 配置文件**

```
git clone git@github.com:Young-Wang/docker-web-dev.git

cd docker-web-dev
```

**3.** **修改 docker-compose.yml 文件**

```
# 修改端口映射，例如：docker容器内前端开发项目的端口为3000，映射到机器的端口8080
ports:
  # "local port:web server port running in docker container"
  - "8080:3000"

# 修改工作目录映射，例如：本地工作目录地址为/Users/younwang/Documents/workspace/my-app，映射到docker容器内的/workspace目录
volumes:
  # "local work directory:/workspace"
  - "/Users/younwang/Documents/workspace/my-app:/workspace"
```

**4.** **创建镜像、容器**

运行 `docker-compose up -d` 创建镜像以及容器。

**5.** **启动前端项目**

成功启动容器以后运行`docker ps`获取 `docker-web-dev` 镜像对应的容器 ID `CONTAINER ID`，例如 `065ec01dc281`，运行 `docker exec -it 065ec01dc281 /bin/bash` 进入容器，启动前端项目，打开浏览器查看 [http://localhost:8080/](http://localhost:8080/)

```
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS                    NAMES
065ec01dc281        docker-web-dev      "node"              17 minutes ago      Up 17 minutes       0.0.0.0:8080->3000/tcp   docker-web-dev_web-dev_1
```

**6.** **关闭容器**

运行 `docker-compose down` 即可。
