#!/bin/bash

# Upgrade packages
sudo yum upgrade -y

# Installing Java 21 (required by Jenkins)
sudo yum install java-21-amazon-corretto -y

# Installing Maven tool 3.9.16
cd /
sudo wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.55/bin/apache-tomcat-10.1.55.tar.gz

# Extracting file
sudo tar -xvzf apache-tomcat-10.1.55.tar.gz

# Moving Maven 
sudo mv apache-tomcat-10.1.55 /opt/tomcat10