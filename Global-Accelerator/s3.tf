resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "ga_flow_logs" {
  bucket = "global-accelerator-flow-logs${random_id.suffix.hex}"

  tags = {
    Name        = "global-accelerator-flow-logs"
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}

resource "aws_s3_bucket_public_access_block" "ga_flow_logs" {
  bucket = aws_s3_bucket.ga_flow_logs.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "ga_flow_logs" {
  bucket = aws_s3_bucket.ga_flow_logs.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}