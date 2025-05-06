# main.tf

# AWS Provider Configuration
provider "aws" {
  region = "us-east-1"
}

# Define the number of EC2 instances to create
variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
  default     = 3  # You can modify this value to create more or fewer instances
}

# EC2 Instance Configuration
resource "aws_instance" "example" {
  count           = var.instance_count  # Using count to create multiple instances
  ami             = "ami-12345678"      # Replace with the desired AMI ID
  instance_type   = "t2.micro"          # Choose your desired instance type
  key_name        = "your-key-name"     # Ensure you have a valid SSH key pair
  security_groups = ["sg-0bb1c79de3EXAMPLE"]  # Replace with your security group ID

  tags = {
    Name = "Example EC2 Instance ${count.index + 1}"  # Unique name for each instance
  }

  # Optional: You can add more configurations like EBS volume, networking, etc. if needed
}

# Output the EC2 instance IDs and public IPs
output "ec2_instance_ids" {
  value = aws_instance.example[*].id
}

output "ec2_public_ips" {
  value = aws_instance.example[*].public_ip
}
