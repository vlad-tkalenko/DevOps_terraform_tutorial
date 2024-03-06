terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.2.0"

}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "example" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t2.micro"
  key_name               = "Tkalenko_key"
  vpc_security_group_ids = ["sg-01142ec3c87ec19dd"]
  tags = {
    Name = "ExampleAppServerInstance"
  }
}
