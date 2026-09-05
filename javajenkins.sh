#!/bin/bash

# Update all system packages
sudo yum update -y

# Add Jenkins repository to yum
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/rpm-stable/jenkins.repo

# Import Jenkins GPG key
sudo rpm --import https://pkg.jenkins.io/rpm-stable/jenkins.io-2026.key

# Upgrade packages
sudo yum upgrade -y

# Installing Java 21 (required by Jenkins)
sudo yum install java-21-amazon-corretto -y

# Install Jenkins
sudo yum install jenkins -y

# Enable and start Jenkins service
sudo systemctl enable jenkins
sudo systemctl start jenkins

# Install Git
sudo yum install git -y