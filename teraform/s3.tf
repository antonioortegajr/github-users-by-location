resource "aws_s3_bucket" "githubusersbylocation" {
  bucket = var.bucketName
}

resource "aws_s3_bucket_website_configuration" "githubusersbylocation" {
  bucket = aws_s3_bucket.githubusersbylocation.bucket

  index_document {
    suffix = "index.html"
  }
  
}

resource "aws_s3_bucket_policy" "githubusersbylocation-policy" {
  bucket = aws_s3_bucket.githubusersbylocation.id
  policy = templatefile("s3-policy.json", { bucket = var.bucketName })
}