resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public_subnets" {
  count = length(var.public_subnet_cidrs)
  vpc_id = aws_vpc.main.id
  cidr_block = element(var.public_subnet_cidrs, count.index)
  availability_zone = element(var.azs, count.index)

  tags = merge(var.tags, {
    Name = "Public Subnet ${count.index + 1}"
  })
}

resource "aws_subnet" "private_subnets" {
  count = length(var.private_subnet_cidrs)
  vpc_id = aws_vpc.main.id
  cidr_block = element(var.private_subnet_cidrs, count.index)
  availability_zone = element(var.azs, count.index)

  tags = merge(var.tags, {
    Name = "Private Subnet ${count.index + 1}"
  })
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = merge(var.tags, {
    Name = "VPC Internet Gateway"
  })
}