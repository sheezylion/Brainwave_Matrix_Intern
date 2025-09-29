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

### 2. Connect via SSH
```bash
ssh -i my-key.pem ubuntu@<EC2_PUBLIC_IP>
```

<img width="778" height="774" alt="Screenshot 2025-09-29 at 23 49 00" src="https://github.com/user-attachments/assets/4b6cf357-8695-47c1-a3ee-aa6df2af7641" />

### 3. Install Required Packages

```
sudo apt update && sudo apt upgrade -y
sudo apt install -y git wget
# Install Docker
sudo apt install -y ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
  sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
sudo systemctl enable docker
```

