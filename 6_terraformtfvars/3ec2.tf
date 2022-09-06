resource "aws_instance" "app_server3" {
  ami  = var.ec2_ami_id
  instance_type = var.instance_type
  count = var.ec2_instance_count
  tags = {
    Name = "AppServerInstance3"
  }
}

