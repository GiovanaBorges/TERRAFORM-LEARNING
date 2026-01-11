terraform {
  backend "s3" {
    bucket         = "terraform-state-local"
    key            = "state/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile  = true 

    endpoint       = "http://localhost:4566"
    force_path_style = true
    skip_credentials_validation = true
  }
}
