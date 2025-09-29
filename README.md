# Deploy a web application in AWS
## Prerequisites
- AWS Account
- SSH Key Pair
- Basic knowledge of Docker & Linux

## Steps

### 1. Launch EC2 Instance
- Instance name
- AMI: Ubuntu 22.04 LTS
- Instance type: t2.micro (Free tier)
- VPC: Default (for simplicity)
- Security Group: Allow inbound rules:
  - SSH (22) from My IP
  - HTTP (80) from Anywhere

<img width="1678" height="892" alt="Screenshot 2025-09-29 at 23 45 33" src="https://github.com/user-attachments/assets/28e540f7-f5d7-4945-a1d5-bea1e5635a98" />
