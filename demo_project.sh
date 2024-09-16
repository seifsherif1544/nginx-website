#! /bin/bash



echo "------------------------- Showing images & Containers -------------------------------"

docker images

docker ps



echo "------------------------- Deleting images & Containers -------------------------------"

docker stop $(docker ps -a -q)


docker rm $(docker ps -a -q)

docker rmi -f $(docker images -aq)  

#docker rm -vf $(docker ps -aq) 

echo "------------------------- Showing images & Containers -------------------------------"

docker images

docker ps

echo "--------------------------- Bulding image from Dockerfile -----------------------------"

docker build -t my-nginx-static-site .

echo "----------------------------- Create Container from image -----------------------------"

docker run -d -p 8081:80 my-nginx-static-site

echo "---------------------------------- Showing Web-Site -----------------------------------"

sleep 20s

curl localhost:8081
