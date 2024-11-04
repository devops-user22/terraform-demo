
resource "tfe_workspace" "workspace" {
  name                = "stage"
  organization        = "Integrant"
  auto_apply          = false
  global_remote_state = true
  queue_all_runs      = false
  terraform_version   = "v1.9.8"
  working_directory   = "terraform"
  trigger_prefixes    = ["terraform/*"]
  project_id          = "ws-vq1mQVprPoHYP4EV"
 
  vcs_repo {
    identifier     = "https://github.com/devops-user22/terraform-demo"
    branch         = "main"
    oauth_token_id = "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"
  }
}



variable "bucketname" {
  description = "Name of the S3 bucket"
  type        = string
}


resource "aws_s3_bucket" "neuro-ace-services" {
  bucket = var.bucketname
}
