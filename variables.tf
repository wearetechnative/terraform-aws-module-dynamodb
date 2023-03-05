variable "name" {
  description = "Prefix name for DynamoDB. Must be unique within the region."
  type        = string
}

variable "partition_key" {
  description = "Partition key for DynamoDB table."
  type        = string
}

variable "partition_key_type" {
  description = "Partition key type for DynamoDB table, can be S, N or B."
  type        = string
}

variable "kms_key_arn" {
  description = "KMS key to use for encrypting RDS instances."
  type        = string
}
