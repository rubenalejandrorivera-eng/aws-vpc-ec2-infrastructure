
# AWS Infrastructure Architecture

## Network Overview

The infrastructure uses an Amazon VPC with the CIDR block `10.0.0.0/16`, distributed across two Availability Zones.

## Network Components

| Component | CIDR / Configuration |
|---|---|
| VPC | 10.0.0.0/16 |
| Public Subnet A | 10.0.0.0/24 |
| Private Subnet A | 10.0.1.0/24 |
| Public Subnet B | 10.0.2.0/24 |
| Private Subnet B | 10.0.3.0/24 |

## Routing

- An Internet Gateway is attached to the VPC.
- The public route table includes a default route (`0.0.0.0/0`) to the Internet Gateway.
- Both public subnets are associated with the public route table.
- Both private subnets are associated with a separate private route table.
- The private route table contains only the local VPC route.

## Compute

One Amazon EC2 instance runs Amazon Linux 2023 in Public Subnet A.

Apache HTTP Server was installed to host a publicly accessible web page.

## Security

The EC2 Security Group uses these inbound rules:

- SSH (TCP 22): restricted to the administrator's IP address.
- HTTP (TCP 80): accessible from the internet.

## Cost Considerations

No NAT Gateway was deployed to avoid additional infrastructure costs. Private subnets therefore do not have direct IPv4 internet access.

## Design Limitations

Only one EC2 instance was deployed. The second Availability Zone and private subnets are included in the network design, but a multi-instance highly available application was not implemented.
