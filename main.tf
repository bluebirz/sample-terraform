provider "aws" {}

resource "aws_s3_bucket" "b" {
  bucket = "bluebirz-test-123"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
