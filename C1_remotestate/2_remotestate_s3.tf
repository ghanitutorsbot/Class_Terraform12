resource "aws_s3_bucket" "terraform_state" {
  bucket_prefix = "learn-s3-remote-backend-"

  versioning {
    enabled = true
  }

  force_destroy = true

  // lifecycle {
  //   prevent_destroy = true
  // }
}