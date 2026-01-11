# Define the required providers and their versions
terraform {
    reuired_version = ">= 1.10.0
    required providers {
        aws = {
            source = "hashicorp/aws"
            version = ">= 5.0"
        }
    }
}

provider "aws" {
    region = "us-east-1"
}

# Ec2 instance module
module "instances" {
    source          = "./modiules/instances"
    ami             = "ami-123456789"
    instance_type   = "t2.micro"
    subnet_id       = "subnet-0123"
    key_name        = "my-key"
    instance_name   = "terraform-aws-machine1"
}

# Storage module
module "storage" {
    source              = "./modules/storage"
    availability_zone   = "us-east-1a"
    size                = "50"
    type                = "gp3"
    volume_name         = "terraform-aws-volume1"
    device_name         = "awslab-device"
    instance_id         = "module.ec2_instance.instance_id"
}