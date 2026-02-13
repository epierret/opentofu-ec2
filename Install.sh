#!/bin/bash

# Exit on any error
set -e

# Variables
HTML_CONTENT="<h1>Déploiement OK</h1>"
NGINX_ROOT="/usr/share/nginx/html"
SSH_USER="ec2-user"  # Change if using Ubuntu: "ubuntu"

# 1️⃣ Install NGINX (Amazon Linux / RHEL)
sudo yum update -y
sudo yum install -y nginx

# 2️⃣ Start NGINX service
sudo systemctl enable nginx
sudo systemctl start nginx

# 3️⃣ Create index.html
echo "$HTML_CONTENT" > index.html

# 4️⃣ Set permissions
chmod 644 index.html

# 5️⃣ Move to NGINX web root
sudo mv index.html "$NGINX_ROOT/"

# 6️⃣ Test locally
curl http://localhost:80

echo "✅ Deployment complete! Open your EC2 public IP in a browser to see the page."