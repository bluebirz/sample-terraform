provider "google" {
  project = "bluebirz-playground"
}

resource "google_storage_bucket" "bucket_test1" {
  name          = "bluebirz_bucket_test1"
  location      = "europe-west1"
  storage_class = "REGIONAL"
}
