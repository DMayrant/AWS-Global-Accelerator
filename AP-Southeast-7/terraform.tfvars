# Environment
env = "dev"

# AWS Region
aws_region = "ap-southeast-7"

# VPC
vpc_cidr = "10.195.0.0/16"

# Availability Zones
availability_zones = [
  "ap-southeast-7a",
  "ap-southeast-7b"
]

# Public Subnets
public_subnet_cidrs = [
  "10.195.5.0/24",
  "10.195.10.0/24"
]

# Private Subnets
private_subnet_cidrs = [
  "10.195.70.0/24",
  "10.195.80.0/24"
]

# Application
project_name = "global-accelerator"