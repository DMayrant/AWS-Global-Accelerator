#############################
# US-EAST-1 ENDPOINT GROUP
#############################

resource "aws_globalaccelerator_endpoint_group" "us_east_1" {

  listener_arn = aws_globalaccelerator_listener.http.id

  endpoint_group_region = "us-east-1"

  health_check_protocol = "HTTPS"
  health_check_port     = 80
  health_check_path     = "/"

  health_check_interval_seconds = 30
  threshold_count               = 3

  traffic_dial_percentage = 100

  endpoint_configuration {
    endpoint_id = var.us_east_1_alb_arn
    weight      = 100
  }
}


############################################################
# US-WEST-1 ENDPOINT GROUP
############################################################

resource "aws_globalaccelerator_endpoint_group" "us_west_1" {

  listener_arn = aws_globalaccelerator_listener.http.id

  endpoint_group_region = "us-west-1"

  health_check_protocol = "HTTPS"
  health_check_port     = 80
  health_check_path     = "/"

  health_check_interval_seconds = 30
  threshold_count               = 3

  traffic_dial_percentage = 100

  endpoint_configuration {
    endpoint_id = var.us_west_1_alb_arn
    weight      = 100
  }
}


##############################################
# AP-SOUTHEAST-7 ENDPOINT GROUP — THAILAND 🇹🇭
##############################################

resource "aws_globalaccelerator_endpoint_group" "ap_southeast_7" {

  listener_arn = aws_globalaccelerator_listener.http.id

  endpoint_group_region = "ap-southeast-7"

  health_check_protocol = "HTTPS"
  health_check_port     = 80
  health_check_path     = "/"

  health_check_interval_seconds = 30
  threshold_count               = 3

  traffic_dial_percentage = 100

  endpoint_configuration {
    endpoint_id = var.ap_southeast_7_alb_arn
    weight      = 100
  }
}