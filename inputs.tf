variable "upload_artifacts" {
  type        = string
  default     = "./build" # sample ReactJS build folder
  description = "Artifact/Directory/File path to be uploaded relative to the Terraform directory (i.e ./build, ./dist, index.html, etc...)"
}

locals {
  mime_types = jsondecode(file("${path.module}/data/mime.json"))
}
