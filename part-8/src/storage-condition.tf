resource "google_storage_bucket" "bucket" {
  name     = "bluebirz-test-bucket"
  location = "US"
}

variable "object_spec" {
  type = object({
    name    = string
    content = string
  })
  default = null
}

locals {
  target_file = var.object_spec == null ? { name = "default.txt", content = "Default content" } : var.object_spec
}

resource "google_storage_bucket_object" "object" {
  name    = local.target_file.name
  bucket  = google_storage_bucket.bucket.name
  content = local.target_file.content
}
