#########################
# AWS Compute Optimizer
#########################

resource "aws_computeoptimizer_enrollment_status" "compute_optimizer" {

  status = "Active"

  include_member_accounts = false
}