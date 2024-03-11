terraform {
  cloud {
    organization = "netdevops"

    workspaces {
      name = "aws-vpc"
    }

  }
}