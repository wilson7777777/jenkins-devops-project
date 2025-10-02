# Jenkins DevOps Project 🚀

This project demonstrates a full CI/CD pipeline using Jenkins, Docker, and Node.js. It showcases containerization, automated builds, and deployment workflow using Jenkins pipelines. **Technologies Used:** Node.js (Express), Docker, Jenkins Pipeline (Jenkinsfile). **Next Steps:** Deploy to Kubernetes, add Terraform + Ansible, implement monitoring with Prometheus & Grafana.

## Project Structure
├── Dockerfile            # Containerizes Node.js app
├── Jenkinsfile           # Defines CI/CD pipeline stages
├── README.md             # Project documentation
├── package.json          # Node.js dependencies
├── package-lock.json     # Locked Node.js dependencies
├── server.js             # Express server entry point
└── .gitignore            # Files to ignore in Git

## Setup & Run Locally / Jenkins
1. Install prerequisites: Docker installed and running, Node.js installed locally (optional), Git installed.
2. Build Node.js Docker image: `docker build -t myapp:local .`
3. Run Node.js Docker container: `docker run -p 3000:3000 myapp:local` and open browser [http://localhost:3000](http://localhost:3000)
4. Run Jenkins container with persistent storage: `docker run -d --name jenkins-lts -p 8080:8080 -p 50000:50000 -v /c/jenkins_home:/var/jenkins_home jenkins-node` and open browser [http://localhost:8080](http://localhost:8080)
5. Retrieve Jenkins Initial Admin Password: `docker exec jenkins-lts cat /var/jenkins_home/secrets/initialAdminPassword` and use it to unlock Jenkins and start configuring your pipeline.

## CI/CD Pipeline Overview
The `Jenkinsfile` defines these stages: Checkout (pull code from Git), Build (build Docker image), Test (run unit tests if implemented), Push (push Docker image to DockerHub), 

## Author
Wilson7777777

