###########################
# TFC Workspace Resources #
###########################

resource "tfe_workspace" "workspace" {
  name                = "test"
  organization        = "Integrant"
  auto_apply          = false
  global_remote_state = true
  queue_all_runs      = false
  terraform_version   = "1.5.7"
  working_directory   = "terraform"
  trigger_prefixes    = ["terraform/*"]
  project_id          = "prj-Pqk6LxGXtStGK9Yd"

}


