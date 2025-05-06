resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Terraform EC2 Instance"
  }
}

output "instance_id" {
  value = aws_instance.ec2.id
}
