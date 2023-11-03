resource "aws_s3_bucket" "one" {
bucket = "saibucket" 
acl = "private"
}

resource "aws_s3_bucket_versioning" "two" {
bucket = aws_s3_bucket.one.id
versioning_configuration {
  status = "Enabled"
}
  
}

