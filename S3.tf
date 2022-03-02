resource "aws_s3_bucket" "bucket" {
  bucket = "bucketforterraformjenkins"
  acl = private

  tags = {
    Name        = "My S3bucket"
    Environment = "Dev"
  }
}
