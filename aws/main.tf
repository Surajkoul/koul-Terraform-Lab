# Define the required providers and their versions
terraform {
    reuired_version = 
    required providers {
        aws = {
            source = "hashicorp/aws"
            version = "-> 5.0"
        }
    }
}