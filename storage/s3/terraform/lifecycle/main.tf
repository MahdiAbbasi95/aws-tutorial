resource "aws_s3_bucket" "exercise_3" {
  bucket = "exercise-3"
  tags = {
    "Name" = "exercise-3"
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "bucket-config" {
  bucket = aws_s3_bucket.exercise_3.bucket

  rule {
    id = "transition"

    status = "Enabled"

    transition {
      days          = 30
      storage_class = "GLACIER"
    }
  }
}