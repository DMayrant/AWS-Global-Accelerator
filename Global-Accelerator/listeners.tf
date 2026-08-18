resource "aws_globalaccelerator_listener" "http" {
  accelerator_arn = aws_globalaccelerator_accelerator.main.id

  protocol = "TCP"

  port_range {
    from_port = 80
    to_port   = 80
  }

  client_affinity = "NONE"
}