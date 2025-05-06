resource "aws_s3_bucket" "bucket" {
  bucket = "my-static-website-bucket"
  acl    = "public-read"

  website {
    index_document = "index.html"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}
