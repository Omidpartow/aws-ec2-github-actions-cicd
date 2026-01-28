# AWS EC2 GitHub Actions CI/CD Demo

Simple CI/CD pipeline that deploys a static HTML site to an EC2 instance using GitHub Actions and SSH.

## What this repo contains

- index.html – static site
- deploy.sh – deployment script that copies files to /var/www/html
- .github/workflows/deploy.yml – GitHub Actions workflow that:
  - Checks out the repo
  - Uses SSH (with secrets) to connect to EC2
  - Runs deploy.sh on the instance

## CI/CD Flow

1. Developer pushes to main.
2. GitHub Actions workflow runs.
3. Workflow connects to EC2 via SSH using:
   - EC2_HOST
   - EC2_USER
   - EC2_SSH_KEY (private key)
4. Files are copied and deploy.sh updates the web root.

This pattern is commonly used to teach beginners CI/CD from GitHub to EC2.[web:93][web:96][web:98][web:100]
