# tell terraform what plugins to download.
terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
}

#specify specifics of the provider used to make the cloud resources. 
provider "aws" {
    region = "us-east-1"
}

#specify a resource. needs the name of resource on the left and the internal
#name for the resource on the right. 
resource "aws_iam_user" "my_iam_user" {
    name = "my_iam_user_def"
}

#create the ec-2 instance
resource "aws_instance" "http_servers" {
  ami = "ami-00ca32bbc84273381" # unique, always hardcode
  key_name = "default-ec2"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.http_server_sg.id]

  count = 3
  tags = {
    Name = "Server_${count.index + 1}",
    environment = "dev"
  }
}