# Provider AWS simulado para us-east-1
provider "aws" {
  alias  = "us-east"
  region = "us-east-1"

  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  s3_use_path_style           = true

  endpoints {
    s3 = "http://localhost:4566"
  }
}

# Provider AWS simulado para us-west-1
provider "aws" {
  alias  = "us-west"
  region = "us-west-1"

  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  s3_use_path_style           = true

  endpoints {
    s3 = "http://localhost:4566"
  }
}
