module "file" {
  source   = "../../02-modules/modules/file"
  filename = "dev.txt"
  content  = "ambiente dev"
}
