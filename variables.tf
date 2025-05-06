variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "domain_name" {
  description = "Route53 domain name"
  type        = string
}

variable "db_name" {
  description = "RDS database name"
  default     = "mydatabase"
}
