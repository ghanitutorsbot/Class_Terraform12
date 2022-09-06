resource "aws_route_table" "myvpc_rt" {
  vpc_id = aws_vpc.myvpc.id
}

resource "aws_route" "myvpc-public-route" {
  route_table_id = aws_route_table.myvpc_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.vpc-igw.id
}

resource "aws_route_table_association" "myvpc_rt_associate" {
  route_table_id = aws_route_table.myvpc_rt.id
  subnet_id = aws_subnet.vpc-dev-public-subnet-1.id
}