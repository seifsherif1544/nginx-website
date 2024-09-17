# Project: Build static website with Nginx

This project helps me learn Nginx and create a static website.

## Overview
 
### Prerequisite

- Basic knowledge about Docker
- Tools: `docker`, `curl`

## 1-Setup Nginx Server

### 1.1-Build Docker Image

- Run `docker build -t my-nginx-static-site .`

### 1.2-Run Docker Container

- Run `docker run -d -p 8080:80 my-nginx-static-site`

### 1.3-Verify Installation

- Execute `curl localhost:8081` in your terminal
- Alternatively, open [http://localhost:8081/](http://localhost:8081/) in your browser

## 2-Explore Additional Resources

### 2.1-Script for Automation

- Find the automation script at: [demo_project.sh](./demo_project.sh)

# Related Documentation

- [Nginx Documentation](https://docs.nginx.com/)
