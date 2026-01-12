module "file" {
  source   = "../../02-modules/modules/file"
  filename = "prod.txt"
  content  = "ambiente prod"
}
