resource "aws_cloudwatch_log_group" "ssm_sessions" {
  name              = "/aws/ssm/session-manager"
  retention_in_days = 30

  tags = {
    Name = "ap-southeast-7_ssm-session-logs"
  }
}

resource "aws_ssm_document" "session_manager_settings" {
  name          = "SSM-SessionManager-us-east-1"
  document_type = "Session"

  content = jsonencode({
    schemaVersion = "1.0"
    description   = "Session Manager settings with CloudWatch logging"
    sessionType   = "Standard_Stream"
    inputs = {
      s3BucketName                = aws_s3_bucket.ssm_logs.bucket
      s3KeyPrefix                 = "session-logs/"
      cloudWatchEncryptionEnabled = false
    }
  })
}
