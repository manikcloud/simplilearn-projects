# simplilearn-projects
simplilearn-projects Assessment 

# Assesment SimliLearn 
- Step 1: Chk Terraform  
- Step 2: Go to AWS cloud and Create Access key and ID


- Step 3: Setup AWS profile 
    ```
    aws s3 ls ```` 
- Step 4: Write the TF Script. 
- Step 5: Chk on AWS console. VM is provisioned or not?


# Creation of VM in AWS 
 - Security group 
 - INBOUND RULES
 - OUTBOUND RULES
 - Key pair

- VM AWS AMI ami-0cff7528ff583bf9a

# Jenkins installation via Terraform 
```

  # Type of connection to be established
  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("./deployer")
    host        = self.public_ip
  }

  # Remotely execute commands to install Java, Python, Jenkins
  provisioner "remote-exec" {
    inline = [
      "sudo apt update && upgrade",
      "sudo apt install -y python3.8",
      "wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -",
      "sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ >  /etc/apt/sources.list.d/jenkins.list'",
      "sudo apt-get update",
      "sudo apt-get install -y openjdk-8-jre",
      "sudo apt-get install -y jenkins",
      "sudo apt-get install -y docker docker.io",
      "sudo chmod 777 /var/run/docker.sock",
      "sudo cat  /var/lib/jenkins/secrets/initialAdminPassword",
    ]
  }


```

# Jenkins Console port 8080

- http://3.89.81.9:8080

# ssh to you ubuntu vm
```
ssh -i deployer ubuntu@2.3.4.5
```

# Jenkins Password
```
sudo cat  /var/lib/jenkins/secrets/initialAdminPassword
```

# Docker Installation from ubuntu terminal 
 ```
apt install docker 
apt install docker.io
docker run hello-world

 ```

# Github & Jenkis Integration Webhook 
- Goto repo setting 
- click on Webhook 
- add your payload URL 
```
http://3.89.81.9:8080/github-webhook/
```

- Update the webhook. 


# Create a Jinkins Job 

- Source Code Management
```
https://github.com/manikcloud/simplilearn-projects.git
```

## Branch Specifier 


```
*/main
```
## Goto Build Triggers and choose POLL SCM 
```
* * * * * 
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