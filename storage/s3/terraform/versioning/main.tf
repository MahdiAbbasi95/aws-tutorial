resource "aws_s3_bucket" "exercise_5" {
  bucket = "exercise-5"
  tags = {
    "Name" = "exercise-5"
  }
}

resource "aws_s3_bucket_versioning" "exercise_5" {
  bucket = aws_s3_bucket.exercise_5.id
  versioning_configuration {
    status = "Enabled"
  }
}