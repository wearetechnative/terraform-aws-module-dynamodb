resource "aws_dynamodb_table" "this" {
  name      = var.name
  hash_key  = var.partition_key
  range_key = var.range_key

  attribute {
    name = var.partition_key
    type = var.partition_key_type
  }

  dynamic "attribute" {
    for_each = var.range_key != null ? [1] : []

    content {
      name = var.range_key
      type = var.range_key_type
    }
  }

  dynamic "attribute" {
    for_each = var.global_secondary_indexes

    content {
      name = attribute.value.hash_key
      type = attribute.value.hash_key_type
    }
  }

  billing_mode = "PAY_PER_REQUEST"

  point_in_time_recovery {
    enabled = true
  }

  server_side_encryption {
    enabled     = true
    kms_key_arn = var.kms_key_arn
  }

  dynamic "ttl" {
    for_each = var.ttl_attribute_name != null ? [1] : []

    content {
      attribute_name = var.ttl_attribute_name
      enabled        = true
    }
  }

  dynamic "global_secondary_index" {
    for_each = var.global_secondary_indexes

    content {
      name            = global_secondary_index.value.name
      hash_key        = global_secondary_index.value.hash_key
      projection_type = "KEYS_ONLY"
    }
  }

  stream_enabled = false
  table_class    = "STANDARD"

  tags = merge(var.additional_tags,
    {
      Type          = "DYNAMODB",
      BackupEnabled = "${var.enable_backup}",
      BackupEnabled = locals.backup
  })

  lifecycle {
    prevent_destroy = true
  }
}
