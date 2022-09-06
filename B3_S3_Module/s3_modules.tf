module "s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 2.0"

  bucket              = "fdgfduerwer124"


  

  tags = {
    Owner = "owner"
  }
}