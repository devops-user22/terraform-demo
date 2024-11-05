
terraform { 

  cloud { 
    
    organization = "Integrant" 

    workspaces { 
      name = "terraform-demo" 
    } 
  } 
}

  provider "aws" {
      region  = "us-east-2"
      access_key = "AKIAVYV5Z3DTVXBEC4UH"
    secret_key = "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"
        }

