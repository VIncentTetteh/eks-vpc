resource "aws_subnet" "private_us_east_2a" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-2a"

  tags = {
    Name = "private-us-east-2a"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/my-cluster" = "shared"
  }
}



resource "aws_subnet" "private_us_east_2b" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-2b"

  tags = {
    Name = "private-us-east-2b"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/my-cluster" = "shared"
  }
}

resource "aws_subnet" "public_us_east_2c" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-2c"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-us-east-2c"
    "kubernetes.io/role/elb" = "1"
    "kubernetes.io/cluster/my-cluster" = "shared"
  }
}

