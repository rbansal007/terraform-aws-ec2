terraform {
  cloud {
    hostname = "ec2-13-201-48-181.ap-south-1.compute.amazonaws.com"
    organization = "test21stDeC"
    workspaces {
      name = "8thJan"
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
