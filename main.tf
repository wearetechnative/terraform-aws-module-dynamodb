resource "aws_dynamodb_table" "this" {
  name     = var.name
  hash_key = var.partition_key

  attribute {
    name = var.partition_key
    type = var.partition_key_type
  }

  billing_mode = "PAY_PER_REQUEST"

  point_in_time_recovery {
    enabled = true
  }

  server_side_encryption {
    enabled     = true
    kms_key_arn = var.kms_key_arn
  }

  stream_enabled = false
  table_class    = "STANDARD"

  lifecycle {
    prevent_destroy = true
  }
}
