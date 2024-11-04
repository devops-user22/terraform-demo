
variable "terraform_workspace" {
  description = "The current Terraform workspace"
  default     = "default"
}

locals {
  variables_file = "${terraform.workspace}.tfvars"
}

terraform {
  backend "remote" {
    organization = "Integrant"
    workspaces {
      name = "terraform-demo"
    }
  }
}

# Load the appropriate variables file based on the workspace
data "terraform_remote_state" "variables" {
  backend = "remote"
  config = {
    organization = "your-organization"
    workspaces = {
      name = local.variables_file
    }
  }
}
resource "aws_s3_bucket" "neuro-ace-services" {
  bucket = var.buketname
}
