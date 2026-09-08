terraform {
  required_version = ">= 1.15"

  cloud {
    
    organization = "jaz-hashi"

    workspaces {
      name = "tf-rum"
    }
  }
}


provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_s3_bucket" "tf_rum_test" {
  bucket_prefix = "tf-jaz-rum-vcs"
}