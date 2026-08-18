# Environment
env = "dev"

# AWS Region
aws_region = "us-east-1"

# VPC
vpc_cidr = "10.160.0.0/16"

# Availability Zones
availability_zones = [
  "us-east-1a",
  "us-east-1b"
]

# Public Subnets
public_subnet_cidrs = [
  "10.160.5.0/24",
  "10.160.10.0/24"
]

# Private Subnets
private_subnet_cidrs = [
  "10.160.70.0/24",
  "10.160.80.0/24"
]

# Application
project_name = "global-accelerator"