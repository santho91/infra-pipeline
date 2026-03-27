resource "aws_vpc" "myvpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "${var.env}-vpc"
  }
}

resource "aws_subnet" "publsub" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.sub_cidr
  availability_zone = var.az 

  tags = {
    Name = "${var.env}-pubsubnet"
  }
}

output "subnet_id" {
  value = aws_subnet.pubsub.id
  description = "Get the subnet id"
}