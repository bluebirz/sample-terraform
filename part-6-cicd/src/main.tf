module "bucket" {
  source                    = "../modules/buckets"
  my_module_bucket          = var.my_bucket
  my_module_bucket_class    = var.my_bucket_class
  my_module_bucket_location = var.my_bucket_location
}
