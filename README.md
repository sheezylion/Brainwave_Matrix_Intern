# Deploy a web application in AWS
## Prerequisites
- AWS Account
- SSH Key Pair
- Basic knowledge of Docker & Linux

## Steps

### 1. Launch EC2 Instance
- AMI: Ubuntu 22.04 LTS
- Instance type: t2.micro (Free tier)
- VPC: Default (for simplicity)
- Security Group: Allow inbound rules:
  - SSH (22) from My IP
  - HTTP (80) from Anywhere
