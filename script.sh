#!/bin/bash
echo "admin" | sudo -S docker build -t simple-angular-app .
echo "\n"
echo "==========================Build has been completed=========================="
echo "admin" | sudo -S docker stop simpleangularapp
echo "\n"
echo "==========================Simpleangularapp container has been stopped=========================="
echo "admin" | sudo -S docker rm simpleangularapp
echo "\n"
echo "==========================Simpleangularapp container is running now=========================="
echo "admin" | sudo -S docker tag simple-angular-app:latest 822642595439.dkr.ecr.ap-south-2.amazonaws.com/simple-angular-app:latest
echo "admin" | sudo -S docker push 822642595439.dkr.ecr.ap-south-2.amazonaws.com/simple-angular-app:latest
echo "==========================Simpleangularapp container has been removed=========================="
echo "admin" | sudo -S docker run -d --name simpleangularapp -p 80:80 822642595439.dkr.ecr.ap-south-2.amazonaws.com/simple-angular-app:latest
