resource "aws_s3_bucket_website_configuration" "github_search_users_by_location_website_bucket" {
  bucket = var.domain_name
  policy = data.aws_iam_policy_document.website_policy.json
  index_document {
    suffix = "index.html"
  }
   error_document {
    key = "index.html"
  }
}