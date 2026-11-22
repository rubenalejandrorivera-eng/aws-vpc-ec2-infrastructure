
# AWS Infrastructure Architecture Diagram

The following diagram represents the deployed network design.

```mermaid
flowchart TB
    Internet((Internet))

    subgraph AWS["AWS Cloud"]
        subgraph VPC["portfolio-vpc | 10.0.0.0/16"]
            IGW["Internet Gateway"]

            subgraph AZA["Availability Zone A"]
                PA["Public Subnet A<br/>10.0.0.0/24"]
                PRA["Private Subnet A<br/>10.0.1.0/24"]
                EC2["EC2 Web Server<br/>Amazon Linux 2023<br/>Apache HTTP Server"]
            end

            subgraph AZB["Availability Zone B"]
                PB["Public Subnet B<br/>10.0.2.0/24"]
                PRB["Private Subnet B<br/>10.0.3.0/24"]
            end

            RT["Public Route Table<br/>0.0.0.0/0 → IGW"]
            PRT["Private Route Table<br/>Local route only"]
            SG["Security Group<br/>SSH: Administrator IP<br/>HTTP: 0.0.0.0/0"]
        end
    end

    Internet <--> IGW
    IGW --- RT
    RT --- PA
    RT --- PB
    PA --> EC2
    EC2 --- SG
    PRA --- PRT
    PRB --- PRT
```

## Deployment Notes

- One EC2 instance was deployed in Public Subnet A.
- Both public subnets use the public route table.
- Both private subnets use the private route table.
- No NAT Gateway was deployed.
- The diagram represents the network design; not every subnet contains a deployed EC2 instance.

