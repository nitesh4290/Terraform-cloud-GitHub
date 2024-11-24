terraform {
    required_version = "~> 1.9.8" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.77.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Raminfra" {
	ami = "ami-0453ec754f44f9a4a" 
	instance_type = "t2.small"
	tag {
		NAME = "cloud-server"
	}
}
