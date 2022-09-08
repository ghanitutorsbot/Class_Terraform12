
data "aws_availability_zones" "available" {}

locals {
  cluster_name = "education-eks-${random_string.suffix.result}"
}

resource "random_string" "suffix" {
  length  = 8
  special = false
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}