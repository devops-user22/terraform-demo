


terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

  }



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
    organization = "Integrant"
    workspaces = {
      name = terraform-demo
    }
  }
}
provider "aws" {
    access_key = "AKIAVYV5Z3DTRUDTV4QU"
    secret_key = "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"
}


