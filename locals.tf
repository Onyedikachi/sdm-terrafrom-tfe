locals {
  project = {
    "sdm-project" = {
      description = "Example description of Project"
    }
  }
  workspace = {
    "sdm-workspace" = {
      description         = "Example description of workspace"
      execution_mode      = "remote"
      project_id          = module.project["sdm-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/sdm-terrafrom-tfe"
    }
    "sdm-github" = {
      description         = "Example description of workspace"
      execution_mode      = "remote"
      project_id          = module.project["sdm-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/sdm-terraform-github"
    }
     "scm-product-service-prod" = {
      description         = "Automation for product service resources."
      execution_mode      = "remote"
      project_id          = module.project["sdm-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/sdm-terraform-product-service"

      variables = [
        {
          category = "terraform"
          key      = "cluster_name"
          value    = "sdm-kachi-prod"
        },
        {
          category = "terraform"
          key      = "environment"
          value    = "prod"
        },
      ]
    }
  }
}
