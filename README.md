# AWS Global Accelerator 🌏

The AWS global infrastructure consists of Regions, Availability Zones (AZs), Local Zones, and edge locations. AWS operates dozens of geographic Regions and more than 100 Availability Zones globally. Each Region contains multiple isolated Availability Zones.

Local Zones extend selected AWS compute, storage, database, and other services closer to major metropolitan areas, allowing workloads that require very low latency to run closer to end users while remaining associated with a parent AWS Region.

Edge locations provide points of presence closer to users and support services such as Amazon CloudFront, Route 53, and AWS Global Accelerator.

AWS Global Accelerator provides two static anycast public IPv4 addresses that are advertised from AWS edge locations. User traffic enters the AWS global network at an optimal edge location and is routed across the AWS global backbone to a healthy regional endpoint, such as an Application Load Balancer. This can improve availability and network performance by reducing the portion of the traffic path that traverses the public internet.


# Terraform Commands 🏗️
```bash 
terraform init 
terraform fmt -recursive
terraform validate 
terraform plan
terraform apply
```

Finding alb arn for Global Accelerator
```bash
terraform output -raw alb_arn
```

