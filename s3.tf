# Provider
  provider "aws" {
      access_key="AKIAQORZLAFTV3Y4P4EP"
      secret_key="Mq0pIISpoIXoEbEXjTMJ2kK/PdqXCFfmLpOpAUy1"
      region="ap-south-1"
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

