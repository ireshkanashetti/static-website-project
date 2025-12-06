# Static-Websit-Project-With-Using-Terraform-And-Jenkins

## Project Overview:

- This project demonstrates how to deploy a static website on an AWS EC2 instance using Terraform and automate updates using a Jenkins CI/CD pipeline with GitHub Webhooks.

- Whenever code is pushed to GitHub, Jenkins automatically updates the live website running on EC2.

![](./img/Screenshot%202025-11-29%20170331.png)

## Technologies Used:

- AWS EC2

- Terraform

- Jenkins

- GitHub Webhooks

- Nginx Web Server

- ubuntu

![](./img/Screenshot%202025-11-29%20170924.png)

## Project Structure:

## static-website-project/

├── index.html

├── blog.html

├── contactus.html

├── Projectpage.html

├── Servicespage.html

├── blog.css

├── Homepage.css

├── Projectpage.css

├── contactus.css

├── terraform.tf

├── securitygp.tf

├── variable.tf

├── user_data.sh

├── jenkinsfile

├── .gitignore

└── README.md

- Terraform Configuration:

- Terraform is used to automatically create AWS infrastructure:

- EC2 Instance

- Security Group

- Key Pair

- Install Nginx via User Data

- Clone GitHub repo to web directory

## Steps to Deploy Infrastructure

- terraform init

- terraform plan

- terraform apply

- ec2_public_ip = <0.0.0.0/0>

- http://<0.0.0.0/0>

![](./img/Screenshot%202025-12-06%20214412.png)

![](./img/Screenshot%202025-12-06%20214446.png)

![](./img/Screenshot%202025-12-06%20214535.png)

## Security Group Configuration:

## Allowed inbound ports:

## Port
- 22

- 80

- Protocol

- TCP

- TCP

- Description

- SSH Access

- HTTP Web Access

![](./img/Screenshot%202025-11-29%20170539.png)

## User Data Automation:

- When the EC2 instance launches, the following tasks run    automatically:

- Installs Nginx

- Starts the Nginx service

- Clones the GitHub repository

- Copies website files to /usr/share/nginx/html

- Sets proper permissions

![](./img/Screenshot%202025-12-06%20214535.png)

## User Data Script (user_data.sh)

## This script:

- Installs Nginx

- Starts the web server

- Clones the GitHub repository

- Copies files to /usr/share/nginx/html

- Jenkins CI/CD Pipeline
- Jenkins automatically:

- Pulls latest code from GitHub

- Connects to EC2 using SSH

- Updates website files

- Restarts Nginx

## Jenkinsfile Pipeline:

![](./img/Screenshot%202025-12-06%20214602.png)

![](./img/Screenshot%202025-11-29%20171145.png)

# GitHub Webhook Setup:

- In GitHub:

- Settings → Webhooks → Add Webhook

- Payload URL:
  http://<JENKINS_IP>:8080/github-webhook/

# Content type: application/json

- Enable Push events

## How the Automation Works:

- Developer pushes code to GitHub

- GitHub triggers Jenkins webhook

- Jenkins pipeline runs automatically

- EC2 server gets updated content

- Website reflects latest changes instantly

## Live Website:

- http://<0.0.0.0/0>

## Author:

## Name: Iresh Kanashetti

## Role: AWS / DevOps Engineer