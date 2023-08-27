#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl enable httpd
sudo service httpd start
echo "<h1> Welcome to terraform</h1>" | sudo tee /var/www/html/index.html