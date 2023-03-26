resource "aws_route53_zone" "primary" {
  name = "githubusersbylocation.com"
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.primary.zone_id
  name = "githubusersbylocation.com"
  type = "A"
  alias {
    name = aws_s3_bucket_website_configuration.website_bucket.website_domain
    zone_id = aws_s3_bucket_website_configuration.website_bucket.hosted_zone_id
    evaluate_target_health = false
  }
}