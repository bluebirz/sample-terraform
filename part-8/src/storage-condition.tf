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
  content = local.target_file.content
  bucket  = google_storage_bucket.bucket.name
}

resource "google_storage_bucket_object" "object_2" {
  name    = var.object_spec == null ? "special-file.resource" : var.object_spec.name
  content = var.object_spec == null ? "This is a special file" : var.object_spec.content
  bucket  = google_storage_bucket.bucket.name
}
