resource "google_storage_bucket" "bucket" {
  name     = "bluebirz-test-bucket"
  location = "US"
}

variable "object_spec_foreach" {
  type = map(object({
    name    = string
    content = string
  }))
  default = {
    file1 = {
      name    = "file1.txt"
      content = "This is file 1"
    },
    file2 = {
      name    = "file2.txt"
      content = "This is file 2"
    }
  }
}

resource "google_storage_bucket_object" "object" {
  for_each = var.object_spec_foreach
  name     = each.value.name
  bucket   = google_storage_bucket.bucket.name
  content  = each.value.content
}
