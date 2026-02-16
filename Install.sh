#!/bin/bash

# Exit on any error
set -e

# Variables
HTML_CONTENT="<h1>Déploiement OK</h1>"
NGINX_ROOT="/usr/share/nginx/html"
SSH_USER="ec2-user"  # Change if using Ubuntu: "ubuntu"

 ️Install NGINX (Amazon Linux / RHEL)
sudo yum update -y
sudo yum install -y nginx

Start NGINX service
sudo systemctl enable nginx
sudo systemctl start nginx

️⃣ Create index.html
echo "$HTML_CONTENT" > index.html

Set permissions
chmod 644 index.html

️Move to NGINX web root
sudo mv index.html "$NGINX_ROOT/"

Test locally
curl http://localhost:80

echo "✅ Deployment complete! Open your EC2 public IP in a browser to see the page."
