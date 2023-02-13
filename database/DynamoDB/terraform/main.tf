resource "aws_dynamodb_table" "exercise_8" {
  name           = "exercise-8"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "Email"
  range_key      = "CreatedBy"

  attribute {
    name = "Email"
    type = "S"
  }

  attribute {
    name = "CreatedBy"
    type = "S"
  }

  tags = {
    Name = "exercise-8"
  }
}