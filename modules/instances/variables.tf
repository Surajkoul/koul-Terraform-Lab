# modules/instances/variables.tf

variable "region" {
  description = "GCP region"
  type = "string"
  default = "us-east4"
}

variable "zone" {
  description = "GCP zone"
  type = "string"
  default = "us-east4-b"
}

variable "project_id" {
  description = "GCP Project ID"
  type = "string"
  default = "qwiklabs-gcp-01-8791c49acfa9"
}
