resource "google_storage_bucket" "bucket" {
  name     = "bluebirz-test-bucket"
  location = "US"
}

resource "google_storage_bucket_object" "object" {
  count   = 2
  name    = uuid()
  bucket  = google_storage_bucket.bucket.name
  content = "This is a test object in the bucket."
}
