FROM jenkins/jenkins:lts

USER root

# Install Docker CLI
RUN apt-get update && \
    apt-get install -y curl gnupg lsb-release docker.io && \
    usermod -aG docker jenkins

USER jenkins

