resource "google_storage_bucket" "bucket_by_maps" {
  for_each = toset(["bluebirz-bucket1", "bluebirz-bucket2", "bluebirz-bucket3"])
  name     = each.value
  location = "US"
}
