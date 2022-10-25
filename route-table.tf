resource "aws_route_table" "nat_route_table" {
  vpc_id = aws_vpc.ta-main-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "nat-route-table"
  }
}

# ASSOCIATE ROUTE TABLE -- APP LAYER
resource "aws_route_table_association" "internet_route_table_association_app" {
  subnet_id      = aws_subnet.app.id
  route_table_id = aws_route_table.nat_route_table.id
}

# ASSOCIATE ROUTE TABLE -- PUBLIC LAYER
resource "aws_route_table_association" "internet_route_table_association_public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.nat_route_table.id
}