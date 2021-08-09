terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
provider "aws" {
  region  = "us-east-1"
  profile = "ginoo"
}

resource "aws_instance" "web_server" {
  ami           = "ami-042e8287309f5df03"
  instance_type = "t2.micro"
  key_name      = "gino-key" #replace gino-key with your own aws key

  tags = {
    Name = var.webserver_name
  }
}
resource "aws_instance" "jenkins_server" {
  ami           = "ami-042e8287309f5df03"
  instance_type = "t2.micro"
  key_name      = "gino-key"#replace gino-key with your own aws key

  tags = {
    Name = var.jenkins_name
  }
}
