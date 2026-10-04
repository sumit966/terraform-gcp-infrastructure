#!/bin/bash
apt-get update -y
apt-get install -y docker.io git curl vim htop
systemctl start docker
systemctl enable docker
usermod -aG docker ubuntu
echo "VM ready" > /var/log/startup-complete.log
