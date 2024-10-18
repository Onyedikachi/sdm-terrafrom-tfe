locals {
    project = {
        "sdm-project" = {
            description = "Example description of Project"
        }
    }
    workspace = {
        "sdm-workspace" = {
            description = "Example description of workspace"
            execution_mode = "remote"
            project_id = module.project["sdm-project"].id
            vcs_repo_identifier = "${var.github_organization_name}/sdm-terrafrom-tfe"
        }
         "sdm-github" = {
            description = "Example description of workspace"
            execution_mode = "local"
            project_id = module.project["sdm-project"].id
            vcs_repo_identifier = "${var.github_organization_name}/sdm-terrafrom-github"
        }
    }
}