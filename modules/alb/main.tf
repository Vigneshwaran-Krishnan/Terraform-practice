resource "aws_lb" "alb" {
  name               = "my-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.security_group_id]
  subnets            = var.subnet_ids
  enable_deletion_protection = false

  enable_cross_zone_load_balancing = true

  tags = {
    Name = "Terraform ALB"
  }
}

output "alb_dns_name" {
  value = aws_lb.alb.dns_name
}
