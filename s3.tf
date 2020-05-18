# Provider
  provider "aws" {
      access_key="AKIAQORZLAFTTWHND63C"
      secret_key="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"
      region="ap-south-1"
      skip_credentials_validation = true
      skip_requesting_account_id = true
      skip_metadata_api_check = true

}

resource "aws_s3_bucket" "example" {
   bucket = "terraformtestlogi"
   acl = "private"
   versioning {
        enabled = true
   }
   tags = {
     Name = "Terraforms3bucket"
  }
}

