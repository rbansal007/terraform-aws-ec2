terraform {
 cloud {
    hostname = "ramit-bansal.tf-support.hashicorpdemo.com"
    organization = "test21stDeC"

    workspaces {
      name = "aws-cli"
    }
  }

}

provider "aws" {
  region = "ap-south-1"
}


resource "aws_instance" "test" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
