terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region = var.region
}

# Create a VPC
resource "aws_instance" "myec2" {
  ami = var.ami
  instance_type = var.instance_type
}