terraform {
  required_providers {
    cloud = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
# Create a VPC
resource "aws_instance" "myec2" {
  ami = var.ami
  instance_type = var.instance_type
}
