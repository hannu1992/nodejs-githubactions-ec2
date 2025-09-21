# Node.js App with GitHub Actions CI/CD to AWS EC2 (Docker)

This project demonstrates a **simple production-like setup** for deploying a Node.js application to an **AWS EC2 instance** using:

- **Node.js** (v18)
- **Docker** (containerization)
- **Docker Hub** (image registry)
- **GitHub Actions** (CI/CD pipeline)
- **EC2 (Ubuntu)** (deployment target)

It’s designed as a minimal example for practicing **DevOps workflows** and **Solution Architect skills**.

---

## 🚀 Features
- Simple Node.js app (`app.js`) with a single endpoint
- Dockerized (`Dockerfile`)
- GitHub Actions pipeline:
  - **Build & Push** Docker image to Docker Hub
  - **Deploy** to EC2 via SSH
- Automatic container restart on EC2
- Tagged builds for reproducibility (`testing-<commit-sha>` + `latest`)

---

## 🛠️ Setup Instructions

### 1. Clone the repository
```bash
git clone https://github.com/<your-username>/nodejs-githubactions-ec2.git
cd nodejs-githubactions-ec2
