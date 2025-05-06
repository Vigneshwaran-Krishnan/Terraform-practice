provider "aws" {
  region = "us-east-1"
}

# EC2 instance module
module "ec2_instance" {
  source        = "./modules/ec2_instance"
  instance_type = var.instance_type
  ami_id        = var.ami_id
}

# ALB module
module "alb" {
  source = "./modules/alb"
}

# Route 53 DNS module
module "route53" {
  source = "./modules/route53"
  domain = var.domain_name
}

# S3 bucket module
module "s3" {
  source = "./modules/s3"
}

# RDS module
module "rds" {
  source = "./modules/rds"
  db_name = var.db_name
}
