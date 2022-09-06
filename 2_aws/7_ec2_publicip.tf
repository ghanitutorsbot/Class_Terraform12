resource "aws_eip" "my-eip" {
  instance = aws_instance.app_server.id
  vpc = true
  depends_on = [ aws_internet_gateway.vpc-igw ]
}