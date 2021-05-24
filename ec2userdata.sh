#!/bin/bash
sudo yum update -y
sudo yum install httpd*
sudo systemctl start httpd
sudo systemctl enable httpd
echo " <h1> You are browing on webserver: $(hostname -f) </h1> " > /var/www/html/index.html
sudo systemctl restart httpd
