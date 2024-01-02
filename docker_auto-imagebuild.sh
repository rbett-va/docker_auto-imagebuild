#!/bin/bash
#script to automate docker image build
#Author: Reuben Bett
#Maintainer: Reuben
today= 'date'
user= 'whoami'
dockeruser=yourcase
passward=yourcase
dockerrepo=yourcase
version=(18.4 20.04 21.10 16.04 22.04)
for i in ${version[@]}; do
docker buil -t $dockeruse/$dockerrepo:$i --build-arg version=groovy
docker login -u $dockeruser -p $passward
docker push $dockeruser/$dockerrepo:$i
sleep
echo "image have been uplooaded to your dockerhub repository !!"
