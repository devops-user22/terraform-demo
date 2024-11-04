
variable "terraform_workspace" {
  description = "The current Terraform workspace"
  default     = "default"
}

locals {
  variables_file = "${terraform.workspace}.tfvars"
}


resource "aws_s3_bucket" "neuro-ace-services" {
  bucket = var.bucketname
}
