terraform {
  backend "remote" {
    hostname = "ramit-bansal.tf-support.hashicorpdemo.com"
    organization = "test21stDeC"
    workspaces {
      name = "terraform-aws-ec2-1"
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
  length           = 16
  special          = true
  override_special = "/@£$"
}

resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}
