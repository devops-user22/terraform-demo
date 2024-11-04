resource "tfe_workspace" "workspace" {
  name                = "terraform-demo"
  organization        = "Integrant"
  auto_apply          = false
  global_remote_state = true
  queue_all_runs      = false
  working_directory   = "terraform"
  trigger_prefixes    = ["terraform/*"]
  project_id          = ""
 
  vcs_repo {
    identifier     = ""
    branch         = ""
    oauth_token_id = "redacted"
  }
}
