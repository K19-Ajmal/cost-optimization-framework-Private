#!/bin/bash 
#
#

if ! command -v aws > /dev/null; then 
    echo "INFO: Installing AWS CLI..."

    # Install pre-requisites tool
    dnf update -y > /dev/null 
    dnf install curl unzip -y > /dev/null 


    curl -s "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o  "/tmp/awscliv2.zip"
    
     # Extract zip to /opt directory
    unzip /tmp/awscliv2.zip -d /opt > /dev/null

     # Delete zip file
    rm -f /tmp/awscliv2.zip

    /opt/aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli

    if command -v aws > /dev/null; then
        echo "INFO: AWS cli successfully installed."
    else
        echo "ERROR: AWS cli installation failed."
        exit 1
    fi
else
  echo "INFO: AWS CLI is already installed, skipping installation."
fi
