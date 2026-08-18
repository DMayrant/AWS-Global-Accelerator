output "accelerator_id" {
  description = "ID of the AWS Global Accelerator"
  value       = aws_globalaccelerator_accelerator.main.id
}

output "accelerator_dns_name" {
  description = "DNS name of the AWS Global Accelerator"
  value       = aws_globalaccelerator_accelerator.main.dns_name
}

output "accelerator_ip_addresses" {
  description = "Static anycast IP addresses assigned to the accelerator"
  value       = aws_globalaccelerator_accelerator.main.ip_sets[0].ip_addresses
}

output "accelerator_listener_arn" {
  description = "ARN of the Global Accelerator listener"
  value       = aws_globalaccelerator_listener.http.id
}

output "us_east_1_endpoint_group_arn" {
  value = aws_globalaccelerator_endpoint_group.us_east_1.id
}

output "us_west_1_endpoint_group_arn" {
  value = aws_globalaccelerator_endpoint_group.us_west_1.id
}

output "ap_southeast_7_endpoint_group_arn" {
  value = aws_globalaccelerator_endpoint_group.ap_southeast_7.id
}

output "accelerator_arn" {
    description = "ARN of Global Accelerator"
    value = aws_globalaccelerator_accelerator.main.arn
}