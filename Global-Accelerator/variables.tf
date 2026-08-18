variable "accelerator_name" {
  description = "Name of the AWS Global Accelerator"
  type        = string
  default     = "multi-region-global-accelerator"
}

variable "us_east_1_alb_arn" {
  description = "ARN of the Application Load Balancer in us-east-1"
  type        = string
}

variable "us_west_1_alb_arn" {
  description = "ARN of the Application Load Balancer in us-west-1"
  type        = string
}

variable "ap_southeast_7_alb_arn" {
  description = "ARN of the Application Load Balancer in ap-southeast-7"
  type        = string
}