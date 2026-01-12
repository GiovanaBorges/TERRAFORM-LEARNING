terraform {
  source = "../../modules/vpc"
}

inputs = {
  env      = "prod"
  filename = "prod-vpc.txt"
}
