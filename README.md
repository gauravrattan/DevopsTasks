# Containerize a Python Application
---
### Build application
Build the Docker image manually by cloning the Git repo.
```
$ git clone https://github.com/gauravrattan/DevopsTasks.git
$ docker build -t gaurav0408/devopstask:1.
```
### Download precreated image
You can also just download the existing image from DockerHub.
```
docker pull gaurav0408/devopstask:1
```
### Run the container
Create a container from the image.
```
$ docker run --name my-container -d -p 5000:5000 gaurav0408/devopstask:1
```
Now visit http://localhost:5000


