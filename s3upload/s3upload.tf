# Provider
  provider "aws" {
      access_key=""
      secret_key=""
      region="ap-south-1"
      skip_credentials_validation = true
      skip_requesting_account_id = true
      skip_metadata_api_check = true

}

resource "aws_s3_bucket_object" "filesupload" {
   bucket = "terraformtestlogi"
   key    = "new_object_key"
   source = "/home/logi/Downloads/Mydocuments/Logi.jpeg"
   etag = "${filemd5("/home/logi/Downloads/Mydocuments/Logi.jpeg")}"
}

