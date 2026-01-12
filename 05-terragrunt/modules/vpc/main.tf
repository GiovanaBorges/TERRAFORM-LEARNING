resource "local_file" "vpc" {
  filename = var.filename
  content  = "VPC criada para o ambiente ${var.env}"
}
