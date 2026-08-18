terraform {
  backend "s3" {
    bucket       = "dmayrant-global-accelerator-tfstate-2026"
    key          = "network/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}