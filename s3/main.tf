resource "aws_s3_bucket" "s3" {
  bucket    = "${var.s3}"
  acl       = "public-read"
}

resource "aws_s3_bucket" "s3-sandbox-static" {
  bucket    = "${var.s3-static}"
  acl       = "public-read"
  cors_rule {
    allowed_headers = ["Authorization"]
    allowed_methods = ["GET"]
    allowed_origins = ["*"]
    max_age_seconds = 3000
  }
}