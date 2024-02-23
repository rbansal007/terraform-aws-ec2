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
  access_key = "ASIAUWVAZLGWXV6GP25N"
  secret_key = "bXXvChfC6g1eanrO+hRfliktzdIU+NVGrFg1b792"
  token = "IQoJb3JpZ2luX2VjEIf//////////wEaCXVzLXdlc3QtMiJIMEYCIQDsAO+6OKG1WaOMSrEMoaivIKKRyTnYweL2foqHqXB55wIhALujV81TUkcrEkaKDq0foDfV3kHVvIImo8oFPB+ysUsoKvEECHAQARoMMzIzNTMzNDk0NzAxIgxFvXoTCDREld+qaWUqzgSCkluvTTFev9ffS4qnP37MziR6s0iWj4RSuvDbJxoW0/FEI3g5MzkQF/ssw04SXRnlQeq8qy3STMQzQvCX9SmSowMhOtDoFEvWzbPgWYlWg1lVbp+JxOgI0cE2aNyniMhwFy4wB/RmOxYp+oJVu2EmvmRppiDbbyzyedz0dSg63NKh/ZvRVvcWYAW6nKZLWmqgirxNC+Bz/SN4LerI1bjUYFDqQRILIjjTok8fB/uox00w1Jl3y52YRQVLVGJnxW8/FxGsGhqnE8jy/cQqckb+4uWjpKq2PCznZBvyB6L5uB2980ou9TOFNXFW3SfhJkkyPBgxCXEgSKJeXy18xdq97+/bQVV2rMD2gxk3CM2fQAoksa7fUj22raAgFOd+ufSOJuoCaJlMYnIvb/Tt5oK37IGcbnftMdrLh2unQyf+eBOm9tJ6C7fM6Aklcp+MLAAWUs7sTZIMVe/NKRUybf2D9tuXzRx3E/vDMmJ/PJAkha2nPo6ug21JyD97wMyCrswZ8KMM/ds6V2W0FUNduo/t26vnvPrjceKDUI36+5j6X58z0m9O0t4WrCVHnC0hB25asqGCMzl5a3itPd0NYme06eHRom8th/cZMLhASs/1WOfbeeo+Mq5TE+x8SZt8ZhMLPiI+OYR1hg2zIzzcPVGsaS7JHKckDpJjDZDYbp54V46QOa5v9fH7+WwOkkkmvnzGN+Yy7u2YiaA24ZA490LhusvkvfujdNIRDPUgkJlxsFbV4PXW/Cj/wyYraL4y8N5IR1l+uNAv0pFsGJZKNDC3g+GuBjqgAfDr3oVoJD3GYp/6sBji73K4jYJTwJaUeLrvrDieIvkU6f/po7hzMgIAtO8Vz6KtUr9xRgIC2OthdCqH6YrRis80gcfdPXMXbeHxZMxTKR8uAA2yB73Xc+lH5aGFXpKot/4RieH75voYSpaZDozJXxe/SVuuS38RcpjconbrGqSRmztXtS0PyrABsmDgN2MBGyvz7GhGslDKnBU1AKwPrbM="
}


resource "aws_instance" "test" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
