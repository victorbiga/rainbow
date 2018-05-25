#!/bin/bash
#Script Name	:Jenkins + Nginx 
#Description	:This will install jenkins and nginx and will forward port 80 to port 8080 for the user
#Run where      :Script must be added to user data when launching EC2 instance on AWS
#Author       	:Victor Biga                                                
#Email         	:victor.biga@gmail.com                                           
#Version info   :1.0
#Test date      :
#Test result    :NA


curl -O https://raw.githubusercontent.com/victorbiga/rainbow/master/jenkins.sh
chmod +x jenkins.sh | exec ./jenkins.sh

#install nginx
curl -O https://raw.githubusercontent.com/victorbiga/rainbow/master/nginx.sh
chmod +x nginx.sh 
exec ./nginx.sh
rm *

cd /etc/nginx/
curl -O https://raw.githubusercontent.com/victorbiga/rainbow/master/nginx.conf



