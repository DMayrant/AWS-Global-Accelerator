#############
# VPC Outputs
#############

output "vpc_id" {
  description = "ID of the US-East-1 VPC"
  value       = aws_vpc.main_vpc.id
}

# Public Subnets
output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = aws_subnet.public_subnet[*].id
}

# Private Subnets
output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = aws_subnet.private_subnet[*].id
}

# Internet Gateway
output "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  value       = aws_internet_gateway.igw.id
}
##############
# ALB Outputs
##############

output "alb_arn" {
  description = "ARN of the US-East-1 Application Load Balancer"
  value       = aws_lb.alb.arn
}

output "alb_dns_name" {
  description = "DNS name of the US-East-1 Application Load Balancer"
  value       = aws_lb.alb.dns_name
}

output "alb_zone_id" {
  description = "Hosted zone ID of the US-East-1 Application Load Balancer"
  value       = aws_lb.alb.zone_id
}

# Target Group
output "target_group_arn" {
  description = "ARN of the Application Load Balancer target group"
  value       = aws_lb_target_group.app_tg.arn
}

# HTTP Listener
output "http_listener_arn" {
  description = "ARN of the ALB HTTP listener"
  value       = aws_lb_listener.http.arn
}

################
# SSM Endpoints 
################

output "ssm_endpoint_id" {
  description = "Id of SSM endpoint"
  value       = aws_vpc_endpoint.ssm.id
}

output "ec2_messages_endpoint_id" {
  description = "Id of EC2 Messages endpoint"
  value       = aws_vpc_endpoint.ec2messages.id
}

output "ssm_messages_endpoint_id" {
  description = "Id of SSM Messages endpoint"
  value       = aws_vpc_endpoint.ssmmessages.id
}

