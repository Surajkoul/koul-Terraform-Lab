# modules/storage/variables.tf

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
  description = "GCP project ID"
  type = "string"
  default = "qwiklabs-gcp-01-123"
 } 
