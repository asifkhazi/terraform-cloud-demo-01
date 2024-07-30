#!/bin/bash
apt-get update -y
apt-get install apache2 -y
systemctl enable apache2
systemctl start apache2
echo "<h1> <marquee>Welcome to world of Terraform</marquee></h1>" | sudo tee /var/www/html/index.html
