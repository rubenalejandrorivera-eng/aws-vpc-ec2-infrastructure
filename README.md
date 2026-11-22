
# AWS VPC & EC2 Infrastructure

## Project Overview

This project demonstrates the design and deployment of a basic AWS cloud infrastructure using Amazon VPC and Amazon EC2.

The goal was to build a virtual network, configure public and private subnets, implement routing and security rules, and deploy a Linux web server accessible through the internet.

## Architecture

- 1 Amazon VPC (`10.0.0.0/16`)
- 2 Availability Zones
- 2 Public Subnets
- 2 Private Subnets
- 1 Internet Gateway
- Public and private route tables
- Security Group
- 1 EC2 instance running Amazon Linux 2023
- Apache HTTP Server

## Network Design

| Resource | CIDR |
|---|---|
| VPC | 10.0.0.0/16 |
| Public Subnet A | 10.0.0.0/24 |
| Private Subnet A | 10.0.1.0/24 |
| Public Subnet B | 10.0.2.0/24 |
| Private Subnet B | 10.0.3.0/24 |

## Technologies Used

- Amazon VPC
- Amazon EC2
- Amazon Linux 2023
- Apache HTTP Server
- Linux
- Bash
- SSH
- Git and GitHub

## Security Configuration

- SSH access restricted to a trusted IP address.
- HTTP access allowed through port 80.
- Public and private network segmentation.
- Separate route tables for public and private subnets.

## Automation

A Bash script is included in `scripts/user-data.sh`.

It automates:
- System package updates.
- Apache installation.
- Apache service configuration.
- Website creation.

The script was syntax-validated using `bash -n`.

**Note:** The initial EC2 server was configured manually. The included User Data script is prepared for automated deployment and was validated separately.

## Project Evidence

Screenshots of the AWS infrastructure and deployment process are available in the `screenshots/` directory.

## Learning Outcomes

- Designed a VPC network with multiple subnets.
- Configured Internet Gateway and route tables.
- Applied basic network security rules.
- Launched and connected to an EC2 Linux instance using SSH.
- Installed and configured Apache.
- Deployed a publicly accessible web page.
- Created and validated a Bash automation script.

