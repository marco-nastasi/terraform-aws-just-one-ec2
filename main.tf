terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami               = "ami-0742b4e673072066f"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  tags = {
    Name = "ExampleAppServerInstanceTF"
  }
}
