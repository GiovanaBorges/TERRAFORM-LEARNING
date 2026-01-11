terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

resource "local_file" "exemplo" {
  filename = var.file_name
  content  = var.file_content 
}
