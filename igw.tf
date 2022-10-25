resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.ta-main-vpc.id

  tags = {
    Name = "talent-academy-igw"
  }
}

resource "aws_eip" "nat_eip" {
  vpc = true
}