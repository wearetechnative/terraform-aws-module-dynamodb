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

variable "range_key" {
  description = "Sort key for DynamoDB table."
  type        = string
  default = null
}

variable "range_key_type" {
  description = "Sort key type for DynamoDB table, can be S, N or B."
  type        = string
  default = null
}

variable "kms_key_arn" {
  description = "KMS key to use for encrypting RDS instances."
  type        = string
}

variable "ttl_attribute_name" {
  description = "Optional name of TTL attribute."
  type = string
  default = null
}

variable "global_secondary_indexes" {
  description = "Define global secondary indexes using this variable."
  type = list(object({
    name = string
    hash_key = string
    hash_key_type = string
  }))
  default = []
}

variable "additional_tags" {
  description = "Additional tags to be added to resources."
  type        = map(string)
  default     = {}
}