resource "aws_s3_bucket" "boldy" {
  bucket = "my-tf-test-bucket-shivareddy2980"

  tags = {
    Name        = "My bucket Shiva Reddy"
    Environment = "Development"
  }
}

resource "aws_s3_bucket_acl" "example-1" {
  bucket = aws_s3_bucket.boldy.id
  acl    = "private"
}
