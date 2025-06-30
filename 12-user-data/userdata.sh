#!/bin/bash
echo 'ec2-user:DevOps321' | chpasswd
sed -i 's/^#*PasswordAuthentication.*/PasswordAuthentication yes/' /etc/ssh/sshd_config
systemctl restart sshd
dnf install -y nginx
systemctl enable nginx
systemctl start nginx