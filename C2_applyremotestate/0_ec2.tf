resource "aws_instance" "app_server1" {
  ami           = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"


  tags = {
    Name = "AppServerInstance1"
  }
}

