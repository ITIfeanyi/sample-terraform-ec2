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
  region = "eu-west-2"
}

# Create a VPC
resource "aws_instance" "myec2" {
  ami = "ami-0b53285ea6c7a08a7"
  instance_type = "t2.micro"
}