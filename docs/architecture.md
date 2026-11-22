# AWS VPC and EC2 infrastructure

## 1. Project overview

This project designs and deploys a basic AWS network using Amazon VPC and EC2. The goal is to learn how cloud networking works, how resources communicate, and how to expose a web server to the internet securely.

## 2. Architecture design

The planned architecture has:

- One Amazon VPC spanning two Availability Zones.
- Two public subnets and two private subnets.
- One Internet Gateway.
- Route tables for public and private traffic.
- Security groups that control inbound and outbound traffic.
- An EC2 instance running a web server.

## 3. Network configuration

| Resource | CIDR Block |
|---|---|
| VPC | 10.0.0.0/16 |
| Public Subnet A | 10.0.0.0/24 |
| Private Subnet A | 10.0.1.0/24 |
| Public Subnet B | 10.0.2.0/24 |
| Private Subnet B | 10.0.3.0/24 |

## 4. Network components

### Amazon VPC
An isolated virtual network where AWS resources can communicate.

### Public subnets
Host resources that need direct internet access through the Internet Gateway.

### Private subnets
Host resources that should not be reachable directly from the public internet.

### Internet Gateway
Connects public subnet resources to the internet, within the limits of routing and security rules.

### Route tables
Define how traffic is directed between subnets and external networks.

### Security groups
Virtual firewalls that control traffic entering and leaving AWS resources.

## 5. Compute layer

An EC2 instance will run Apache as the web server. It uses Amazon Linux 2023, and a User Data script automates the initial server setup.

## 6. Security considerations

- Apply the principle of least privilege.
- Restrict SSH access to a trusted IP address.
- Allow HTTP traffic only when required.
- Avoid exposing private resources directly to the internet.
- Review security group rules before deployment.


## 8. Deployment status

This document covers the planned architecture only. Deployed resources and implementation evidence will be documented separately as the project progresses.