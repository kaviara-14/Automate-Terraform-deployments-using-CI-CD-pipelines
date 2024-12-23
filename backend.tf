terraform {
  backend "s3" {
    bucket = "your_bucket_name"
    key    = "state"
    region = "us-east-1"
    dynamodb_table = "your_db_name"
  }
}
