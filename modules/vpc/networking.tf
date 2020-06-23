resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}


resource "aws_subnet" "private" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr

  tags = {
    Name = "subnet"
  }
}

output "vpc_id" {
    value = aws_vpc.main.id
}

output "subnet_id" {
    value = aws_subnet.private.id
}
