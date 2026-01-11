# terraform-lab/variables.tf

variable "region" {
  description = "GCP region"
  type = string
  default = "us-east4"
}

variable "zone" {
  descriptiion = "GCP zone"
  type = string
  default = "us-east4-b"
}

variable "project_id" {
  description = "GCP project ID"
  type = string
  default = "qwiklabs-gcp-01-1234567"
}
