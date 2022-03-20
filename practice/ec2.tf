resource "aws_instance" "ec2-web" {
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type

  tags = {
    Name = var.ec2_tag_name
  }
}