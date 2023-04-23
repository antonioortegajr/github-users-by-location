# Cloudfront distribution for main s3 site.
resource "aws_s3_bucket" "githubusersbylocation" {

  tags = var.common_tags
}
