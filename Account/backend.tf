### PRIMARY REGION REMOTE STATE
data "terraform_remote_state" "primary" {
  backend = "s3"

  config = {
    bucket = "dmayrant-global-accelerator-tfstate-2026"
    key    = "network/terraform.tfstate"
    region = "us-east-1"
  }
}