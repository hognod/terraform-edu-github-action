terraform {
  cloud {
    organization = "DDIM-ORG"
    hostname = "app.terraform.io"

    workspaces {
      name = "terraform-github-action"
    }
  }
}

resource "aws_vpc" "main" {
 cidr_block = var.address_space
 enable_dns_support = true
 enable_dns_hostnames = true

 tags = {
   Name = "${var.prefix}-vpc"
 }
}