
terraform { 
  provider "aws" {
      region  = "us-east-2"
      access_key = ""
    secret_key = ""
        }
  cloud { 
    
    organization = "Integrant" 

    workspaces { 
      name = "terraform-demo" 
    } 
  } 
}

