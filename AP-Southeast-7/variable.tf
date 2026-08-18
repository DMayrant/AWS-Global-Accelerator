variable "private_subnet_count" {
  type    = number
  default = 6

}

variable "public_subnet_count" {
  type    = number
  default = 3
}

variable "availability_zones" {
  type = list(string)
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
}

variable "ec2_instance_type" {
  type        = string
  default     = "t3.micro"
  description = "Running EC2 instance"

}

variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string

}

variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "env" {
  description = "Environment name (dev, staging, prod)"
  type        = string
}
