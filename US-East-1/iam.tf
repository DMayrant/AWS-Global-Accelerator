resource "aws_iam_role" "ec2_instance_role" {
  name = "asg-ec2-role-${var.env}"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_instance_profile" "ec2_profile" {
  name = "asg-instance-profile-${var.env}"
  role = aws_iam_role.ec2_instance_role.name
}

resource "aws_iam_role_policy_attachment" "ssm_core" {
  role       = aws_iam_role.ec2_instance_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

############################################################
# CUSTOM POLICY: ALLOW SSM SESSION LOGGING TO CLOUDWATCH
############################################################

resource "aws_iam_policy" "ssm_logging_policy" {
  name        = "ssm-session-logging-policy-${var.env}"
  description = "Allow SSM sessions to write logs into CloudWatch"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "logs:CreateLogStream",
          "logs:PutLogEvents",
          "logs:DescribeLogGroups",
          "logs:DescribeLogStreams"
        ]
        Resource = "${aws_cloudwatch_log_group.ssm_sessions.arn}:*"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ssm_logging_attach" {
  role       = aws_iam_role.ec2_instance_role.name
  policy_arn = aws_iam_policy.ssm_logging_policy.arn
}

########################################################
# Attach AWS Managed Policy for Amazon CloudWatch agent
########################################################

resource "aws_iam_role_policy_attachment" "cwagent" {
  role       = aws_iam_role.ec2_instance_role.name
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
}
