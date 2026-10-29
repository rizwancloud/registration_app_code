#!/bin/bash

set -e

echo "======================================"
echo " Installing Jenkins on Amazon Linux 2023"
echo "======================================"

# Update system packages
echo "[1/6] Updating system packages..."
sudo dnf update -y

# Install Java 21
echo "[2/6] Installing Java 21..."
sudo dnf install -y java-21-amazon-corretto git

# Verify Java installation
java -version

# Add Jenkins repository
echo "[3/6] Adding Jenkins repository..."
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import Jenkins repository signing key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Install Jenkins
echo "[4/6] Installing Jenkins..."
sudo dnf install -y jenkins

# Enable and start Jenkins
echo "[5/6] Starting Jenkins..."
sudo systemctl enable --now jenkins

# Check Jenkins status
echo "[6/6] Checking Jenkins status..."
sudo systemctl --no-pager --full status jenkins || true

echo ""
echo "======================================"
echo " Jenkins installation completed!"
echo "======================================"

echo "Jenkins URL: http://<YOUR_EC2_PUBLIC_IP>:8080"
echo ""
echo "Initial Administrator Password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo ""
echo "IMPORTANT:"
echo "1. Allow inbound TCP port 8080 in your EC2 security group."
echo "2. Restrict port 8080 to your own public IP address."
echo "3. Open the Jenkins URL in your browser."
