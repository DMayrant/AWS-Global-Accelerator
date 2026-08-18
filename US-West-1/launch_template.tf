resource "aws_launch_template" "ec2_launch_template" {
  name_prefix   = "ec2-launch-template-"
  image_id      = "ami-023fc516bcad46698"
  instance_type = "t3.large"

  iam_instance_profile {
    name = aws_iam_instance_profile.ec2_profile.name
  }

  # Correct ASG pattern
  vpc_security_group_ids = [
    aws_security_group.app_sg.id
  ]

  user_data = base64encode(<<-EOF
  #!/bin/bash

  dnf install -y nginx

  systemctl enable nginx
  systemctl start nginx
EOF
  )

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "us-east-1_launch-temp"
    }
  }
}

