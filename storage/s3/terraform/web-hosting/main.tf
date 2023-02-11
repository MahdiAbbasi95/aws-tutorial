resource "aws_s3_bucket" "exercise_4" {
  bucket = "exercise-4"
  tags = {
    "Name" = "exercise-4"
  }
}

resource "aws_s3_bucket_website_configuration" "exercise_4" {
  bucket = aws_s3_bucket.exercise_4.bucket

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}