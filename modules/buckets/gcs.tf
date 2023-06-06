resource "google_storage_bucket" "bucket_test1" {
  name          = var.my_module_bucket
  location      = var.my_module_bucket_location
  storage_class = var.my_module_bucket_class
}
