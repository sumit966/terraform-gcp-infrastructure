# Terraform GCP Infrastructure Automation

Infrastructure as Code (IaC) for provisioning GCP infrastructure using **Terraform** â€” VPC, subnets, firewall rules, and Compute Engine VMs.

![Terraform](https://img.shields.io/badge/Terraform-1.5+-7B42BC?logo=terraform)
![GCP](https://img.shields.io/badge/GCP-Compute_Engine-4285F4?logo=googlecloud)
![License](https://img.shields.io/badge/License-MIT-yellow)

> Portfolio Project Â· Sumit Raj Â· VNIT Nagpur

## Overview

Automated GCP infrastructure provisioning with VPC, subnets, firewalls, and Compute Engine VMs.

## Architecture

VPC Network - Subnet - Compute Engine VM (Ubuntu + Docker)

## Project Structure

- main.tf
- variables.tf
- outputs.tf
- vpc.tf
- compute.tf
- scripts/startup.sh
- environments/dev/terraform.tfvars
- environments/prod/terraform.tfvars

## Quick Start

1. Install Terraform
2. gcloud auth application-default login
3. terraform init
4. terraform plan -var-file="environments/dev/terraform.tfvars"
5. terraform apply

## Resources Created

- VPC Network
- Subnet 10.0.1.0/24
- Firewall rules (22, 80, 443)
- Compute Engine VM

## Author

Sumit Raj
- Portfolio: https://sumit966-github-io.vercel.app
- LinkedIn: https://linkedin.com/in/er-sumit-raj
- GitHub: https://github.com/sumit966
- Email: info.sr0909@gmail.com

## License

MIT
