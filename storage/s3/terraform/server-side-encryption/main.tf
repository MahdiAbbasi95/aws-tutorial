resource "aws_s3_bucket" "exercise_2" {
  bucket = "exercise-2"
  tags = {
    "Name" = "exercise-2"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "exercise_2" {
  bucket = aws_s3_bucket.exercise_2.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}