
#!/bin/bash

# Update system packages
dnf update -y

# Install Apache web server
dnf install httpd -y

# Start and enable Apache
systemctl enable httpd
systemctl start httpd

# Create website directory
mkdir -p /var/www/html

# Create custom web page
cat > /var/www/html/index.html <<'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AWS Cloud Infrastructure Project</title>
</head>
<body>
    <h1>My AWS Web Server is Running!</h1>
    <p>Successfully deployed using Amazon EC2 and Apache.</p>
    <p>Infrastructure: AWS VPC | Amazon Linux 2023 | Apache HTTP Server</p>
    <p>Automated deployment using Bash.</p>
</body>
</html>
EOF

# Set appropriate file permissions
chmod 644 /var/www/html/index.html

# Verify Apache service
systemctl is-active httpd
