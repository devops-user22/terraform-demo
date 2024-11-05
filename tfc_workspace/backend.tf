#########################
# TFC Workspace Backend #
#########################

# TODO PLEASE DO NOT UPDATE
terraform {
  backend "s3" {
    bucket         = "redacted"
    key            = "{repo_name}.tfstate"
    dynamodb_table = "redacted"
    region         = "redacted"
    encrypt        = true
    role_arn       = "redacted"
  }
}