# Project: Build static website with Nginx

This project helps me learn Nginx and create a static website.

## Overview
 
### Prerequisite

- Basic knowledge about Docker
- Tools: `docker`, `curl`, `Jenkins`

## 1-Setup Nginx Server

### 1.1-Build Docker Image

- Run `docker build -t my-nginx-static-site .`

### 1.2-Run Docker Container

- Run `docker run -d -p 5000:80 my-nginx-static-site`

### 1.3-Verify Installation

- Execute `curl localhost:5000` in your terminal
- Alternatively, open [http://localhost:5000/](http://localhost:5000/) in your browser

## 2-Explore Additional Resources

### 2.1-Script for Automation

- Find the automation script at: [demo_project.sh](./demo_project.sh)

### 2.2-Script for Jenkins Pipeline (CI/CD)

- https://github.com/seifsherif1544/nginx-website/blob/master/Jenkinsfile


