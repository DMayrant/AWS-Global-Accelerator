resource "aws_globalaccelerator_accelerator" "main" {
  name            = var.accelerator_name
  ip_address_type = "IPV4"
  enabled         = true

  attributes {
    flow_logs_enabled = true
    flow_logs_s3_bucket = aws_s3_bucket.ga_flow_logs.id
    flow_logs_s3_prefix = "global-accelerator/"
  }

  tags = {
    Name        = var.accelerator_name
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}