resource "aws_instance" "app_server1" {
  ami  = var.ec2_ami_id
  instance_type = var.ec2_instance_type[2]
  count = var.ec2_instance_count
  tags = {
    Name = "AppServerInstance1"
  }
}


