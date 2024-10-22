locals {
  network = {
    "sdm" = {
      azs  = ["eu-west-2a", "eu-west-2b"]
      cidr = "10.0.0.0/16"
    }
  }

  cluster = {
    "sdm-kachi" = {
      domain      = "<your-top-level-domain>"
      environment = "dev"
      vpc_name    = "sdm"
    }
  }
}