#!/bin/bash
# Update and install required packages
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
