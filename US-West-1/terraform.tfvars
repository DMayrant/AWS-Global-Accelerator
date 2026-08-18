# Environment
env = "dev"

# AWS Region
aws_region = "us-west-1"

# VPC
vpc_cidr = "10.175.0.0/16"

# Availability Zones
availability_zones = [
  "us-west-1a",
  "us-west-1c"
]

# Public Subnets
public_subnet_cidrs = [
  "10.175.5.0/24",
  "10.175.10.0/24"
]

# Private Subnets
private_subnet_cidrs = [
  "10.175.70.0/24",
  "10.175.80.0/24"
]

# Application
project_name = "global-accelerator"