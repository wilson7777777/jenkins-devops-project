# Jenkins DevOps Project

## Overview
This project demonstrates a full CI/CD pipeline using Jenkins, Docker, and Node.js.

- **Language**: Node.js (Express)
- **Containerization**: Docker
- **CI/CD**: Jenkins Pipeline (Jenkinsfile)
- **Next Steps**: Deploy to Kubernetes, add Terraform + Ansible, add monitoring

## Run Locally
```bash
docker build -t myapp:local .
docker run -p 3000:3000 myapp:local
