resource "aws_s3_bucket" "exercise_1" {
  bucket = "exercise-1"
  tags = {
    "Name" = "exercise-1"
  }
}

resource "aws_s3_bucket_public_access_block" "public_access_blocking" {
  bucket = aws_s3_bucket.exercise_1.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.exercise_1.id
  versioning_configuration {
    status = "Disabled"
  }
}