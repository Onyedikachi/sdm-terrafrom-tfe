locals {
  environments = ["prod"]

  services = [
    {
      name     = "service"
      language = "Go"
      parameters = [
        "sdm-instructor",
        "sdm-location",
        "sdm-version"
      ]
      type = "gateway"
      tier = "cluster"
    }
  ]
}