resource "aws_db_instance" "db" {
  allocated_storage    = 20
  db_instance_class    = "db.t2.micro"
  engine               = "postgres"
  engine_version       = "12.4"
  instance_identifier  = "mydbinstance"
  name                 = var.db_name
  username             = "admin"
  password             = "password123"
  skip_final_snapshot  = true

  tags = {
    Name = "Terraform RDS"
  }
}

output "db_endpoint" {
  value = aws_db_instance.db.endpoint
}
