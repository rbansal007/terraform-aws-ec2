terraform {
 cloud {
    hostname = "ramit-fdo.tf-support.hashicorpdemo.com"
    organization = "testDockerRuns"

    workspaces {
      name = "testWorkspace_20thFeb"
    }
  }
 required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.6.0"
    }
  }
}

provider "random" {
  # Configuration options
}


resource "random_string" "random" {
  length           = 25
  special          = true
  override_special = "/@£$"
}

resource "random_password" "password" {
  length           = 25
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}
