<<<<<<< HEAD
=======

>>>>>>> d19231927ffeca75f615117b05c4d368c03749fc
resource "aws_instance" "app_server" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

