terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.10.0"
    }
  }
  cloud { 
    organization = "Hsinwei_Terraform" 
    workspaces { 
      name = "Terraform_Associate" 
    } 
  } 
}

resource "aws_instance" "my_server" {
  ami           = "ami-00ca32bbc84273381"
  instance_type = "t2.micro"

  tags = {
    Name = "MyServer"
  }
}
