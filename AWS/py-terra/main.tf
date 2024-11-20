provider "aws" {
  region     = var.step5_region
  access_key = var.step3_access_key
  secret_key = var.step4_secret_key
}

resource "aws_vpc" "main" {
  cidr_block           = var.step8_vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = var.step7_vpc_name
  }
}

resource "aws_subnet" "public" {
  count      = length(var.step9_public_subnet_cidrs)
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.step9_public_subnet_cidrs, count.index)

  tags = {
    Name = "Public Subnet ${count.index + 1}"
  }
}

resource "aws_subnet" "private" {
  count      = length(var.step10_private_subnet_cidrs)
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.step10_private_subnet_cidrs, count.index)

  tags = {
    Name = "Private Subnet ${count.index + 1}"
  }
}
