resource "aws_instance" "app_server" {
  ami           = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"
  #availability_zone = "us-east-1b"
  count         = 2
  subnet_id =aws_subnet.vpc-dev-public-subnet-1.id
  vpc_security_group_ids = [ aws_security_group.myvpc-sg.id ]
  tags = {
    Name = "AppServerInstance"
  }

  /*
  lifecycle {
    create_before_destroy = true
  }
*/
}

resource "aws_instance" "web" {
  ami = "ami-0915bcb5fa77e4892" # Amazon Linux
  instance_type = "t2.micro"
  tags = {
    "Name" = "web-2"
  }
  lifecycle {
    prevent_destroy = true # Default is false
  }
}
