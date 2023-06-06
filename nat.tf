resource "aws_eip" "nat" {
  domain = "vpc"
  

  tags = {
    Name = "nat"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id = aws_subnet.public_us_east_2c.id

  tags = {
    Name = "nat"
  }

  depends_on = [ aws_internet_gateway.igw ]
}