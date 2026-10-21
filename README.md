# Terraform Azure – Web Server with Private Networking

This project demonstrates how to deploy a **secure Azure network architecture** using **Terraform**, consisting of:

- A **public web server VM** accessible from the internet
- A **private backend VM** with no internet exposure
- Network isolation using **public and private subnets**
- Traffic control using **Network Security Groups (NSGs)**

The goal of this lab is to understand **public vs private networking in Azure** and how Terraform expresses real cloud architecture.

---

## 🧱 Architecture Overview

The infrastructure follows a classic two-tier design:

Internet --> [Public IP] -- [Web VM (NGINX)] -- private traffic -- [Backend VM] 


### Components

- **Virtual Network (VNet)**  
  Address space: `10.0.0.0/16`

- **Public Subnet** (`10.0.1.0/24`)  
  Hosts the web server VM  
  Allows:
  - HTTP (port 80)
  - SSH (port 22)

- **Private Subnet** (`10.0.2.0/24`)  
  Hosts the backend VM  
  - No public IP  
  - Only accessible from the public subnet

---

## 🔐 Security Model

### Public Subnet (Web Tier)
- Exposed to the internet
- NSG allows:
  - HTTP (80) from anywhere
  - SSH (22) for administration

### Private Subnet (Backend Tier)
- Not reachable from the internet
- NSG allows:
  - Traffic **only from the public subnet**
- No public IP attached

This ensures:
- The backend is **fully private**
- Only internal Azure traffic can reach it

---

## ⚙️ Technologies Used

- **Terraform**
- **Microsoft Azure**
- **Azure Virtual Network**
- **Azure Linux Virtual Machines**
- **Network Security Groups**
- **NGINX** (installed via cloud-init)

<img width="2374" height="649" alt="azure-resource-groups" src="https://github.com/user-attachments/assets/9308421f-4bdd-45c1-b64e-c0b87c6530dc" />
<img width="1738" height="1125" alt="azure-resource-group-overview" src="https://github.com/user-attachments/assets/db33017d-6f25-4f4e-b37f-056568adf9cf" />
<img width="1536" height="1024" alt="image" src="https://github.com/user-attachments/assets/51aa613a-3ace-41ff-a9b8-1a96e20c59c6" />



