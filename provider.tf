terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

  }
  cloud { 
    
    organization = "Integrant" 

    workspaces { 
      name = "terraform-demo" 
    } 
  } 
}

provider "aws" {
    access_key = "AKIAVYV5Z3DTRUDTV4QU"
    secret_key = "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"
}


