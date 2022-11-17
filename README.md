# Deploy flask application by using below steps

## Clone the code

```bash
git clone <RepoURL>
```

## Create Docker Image
Docker is a continerization tool.Using docker we can deploy our applications as 

containers using docker images. Containers contains application code and also the softwares,

config files whatever is required for our application to run.

Create docker image using Dockerfile


```docker
docker build -t flaskapp .
```

## Deploy Application Using Docker Container

```docker
docker run -d --name <containername> -p <hostport>:<containerport> <Imagename/ID>:<ImageTag>
docker run -d --name flaskcont -p 8081:8000 flaskapp
```

## List Docker Containers
```docker
docker ps -a
```
### Jenkins CI/CD Flow:

![ProjectArchitecture](./docs/flow.png)
