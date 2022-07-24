resource "aws_instance" "app_server" {
  //ami           = "ami-052efd3df9dad4825"
  //instance_type = "t2.micro"
  ami  = var.image_id
  instance_type = var.instance_type

  tags = {
    Name = "AppServerInstance"
  }
}

resource "aws_instance" "app_server1" {
  //ami           = "ami-052efd3df9dad4825"
  //instance_type = "t2.micro"
  ami  = var.image_id
  instance_type = var.instance_type

  tags = {
    Name = "AppServerInstance1"
  }
}

variable "instance_type" {
  default = "t2.micro"
  description = "EC2 Instance Type"
  type = string
}

variable "image_id" {
  //default = "ami-052efd3df9dad4825"
  type = string
}

output "appserver_publicip" {
  description = "EC2 Instance Public IP"
  value = aws_instance.app_server.public_ip
  
}
output "appserver1_publicip" {
  description = "EC2 Instance Public IP"
  value = aws_instance.app_server1.public_ip
}

output "appserver_privateip" {
  description = "EC2 Instance Private IP"
  value = aws_instance.app_server.private_ip
  
}

output "appserver1_privateip" {
  value = aws_instance.app_server1.private_ip
}