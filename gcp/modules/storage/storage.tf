resource "google_storage_bucket" "tf-bucket-1" {
  name = "tf-bucket-123"
  location = "US"
  force_destroy = "true"
  uniform_bucket_level_access = true
}
