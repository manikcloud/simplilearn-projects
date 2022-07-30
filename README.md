# simplilearn-projects
simplilearn-projects Assessment 

# Assesment SimliLearn 
- Step 1: Chk tF 
- Step 2: Go to AWS cloud and Create Access key and ID



- Step 3: Setup AWS profile (aws s3 ls ) 
- Step 4: Write the TF Script. 
- Step 5: Chk on AWS console. VM is provisioned or not?


# Creation of VM in AWS 
 - Security group 
 - INBOUND
 - OUTBOUND RULES
 - key pair

- VM AWS AMI ami-0cff7528ff583bf9a

# Jenkins Password
```
sudo cat  /var/lib/jenkins/secrets/initialAdminPassword
```

# Docker Installation 
 ```
apt install docker 
apt install docker.io
docker run hello-world

 ```

# Commands related to Docker 
```
docker build -t demo .
vim index.html
docker build -t demo .

chmod 777 /var/run/docker.sock

docker tag demo varunmanik/httpd:cicd
docker build -t demo .
docker tag demo varunmanik/httpd:cicd
docker run -d -p 80:80 varunmanik/httpd:cicd
```

# Execute shell Command 

```
docker run hello-world
docker rm `docker ps -aq` -f
docker build -t demo .
docker tag demo varunmanik/httpd:cicd
docker run -d -p 80:80 varunmanik/httpd:cicd
docker ps 
```


# Common Error 
```
/var/run/docker.sock: connect: permission denied
```

# Resolution

```
sudo chmod 777 /var/run/docker.sock

```