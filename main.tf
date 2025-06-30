terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  s3_use_path_style           = true

endpoints {
    s3 = "http://localhost:4566"
  }
}

module "my_s3_bucket" {
  source      = "./modules/mi-recurso"
  bucket_name = "my-module-bucket-v2"
}

output "bucket_id" {
  value = module.my_s3_bucket.bucket_id
}