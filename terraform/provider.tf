
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
      access_key = ""
    secret_key = ""
        }

