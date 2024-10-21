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
    "sdm-aws-network" = {
      description         = "Automation for AWS network resources."
      execution_mode      = "remote"
      project_id          = module.project["sdm-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/sdm-terraform-aws-network"

      variables = [
        {
          category = "terraform"
          hcl      = true
          key      = "azs"
          value    = jsonencode(["eu-west-2a", "eu-west-2b"])
        },
        {
          category = "terraform"
          key      = "cidr"
          value    = "10.0.0.0/16"
        },
        {
          category = "terraform"
          key      = "name"
          value    = "sdm"
        },
      ]
    }
     "sdm-aws-cluster" = {
      description         = "Automation for AWS cluster resources."
      execution_mode      = "remote"
      project_id          = module.project["sdm-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/sdm-terraform-aws-cluster"

      variables = [
        {
          category = "terraform"
          key      = "domain"
          value    = "onyedikachinwosu.com.ng"
        },
        {
          category = "terraform"
          key      = "environment"
          value    = "prod"
        },
        {
          category = "terraform"
          key      = "name"
          value    = "sdm-kachi"
        },
        {
          category = "terraform"
          key      = "vpc_name"
          value    = "sdm"
        },
      ]
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
