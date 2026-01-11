# koul-terraform-lab

terraform {
  required_version = ">= 1.5.0"
  required providers {
    google = {
      source = "hashicorp/google"
      version = ">= 5.0.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region = var.region
  zone = var.zone
}

# Example module calls (kept minimal to satisfy structure requirement)
module "instances" {
  source = "./modules/instances"
  project_id = var.project_id
  region = var.region
  zone = var.zone
}

module "storage" {
  source = "./modules/storage"
  project_id = var.project_id
  region = var.region
  zone = var.zone
}

terraform {
  backend "gcs" {
    bucket = "tf-bucket-239485"
    prefix = "terraform/state"
  }
}

module "network" {
  source = "terraform-google-modules/network/google"
  version = "10.0.0"

  project_id = var.project_id
  network_name = "tf-vpc-620556"
  routing_mode = "GLOBAL"

# Create two subnets in us-east4

  subnets = [
    {
      subnet_name = "subnet-01"
      subnet_ip = "10.10.10.0/24"
      subnet_region = "us-east4"
    },
    {
      subnet_name = "subnet-02"
      subnet_ip = "10.10.20.0/24"
      subnet_region = "us-east-4"
    }
  ]
}
