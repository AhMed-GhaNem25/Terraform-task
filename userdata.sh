#!/bin/bash
        sudo yum update -y
        sudo yum install docker -y
        sleep 30
        sudo systemctl start docker
        sudo systemctl enable docker
        sleep 30
        sudo chmod 666 /var/run/docker.sock
        sudo usermod -aG docker ec2-user
        sudo chown $USER /var/run/docker.sock
        sleep 30
        docker run -d -p 8080:80 nginx