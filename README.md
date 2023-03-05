# Terraform AWS [dynamodb]

This module implements DynamoDB and enforces or (at least) encourages best practices by default.

[![](we-are-technative.png)](https://www.technative.nl)

## How does it work

See the variables of this module. The current staten of this module is self-explanatory given some basic knowledge of DynamoDB.

<!-- BEGIN_TF_DOCS -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >=4.21.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kms_key_arn"></a> [kms\_key\_arn](#input\_kms\_key\_arn) | KMS key to use for encrypting RDS instances. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Prefix name for DynamoDB. Must be unique within the region. | `string` | n/a | yes |
| <a name="input_partition_key"></a> [partition\_key](#input\_partition\_key) | Partition key for DynamoDB table. | `string` | n/a | yes |
| <a name="input_partition_key_type"></a> [partition\_key\_type](#input\_partition\_key\_type) | Partition key type for DynamoDB table, can be S, N or B. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_table_arn"></a> [table\_arn](#output\_table\_arn) | n/a |
| <a name="output_table_name"></a> [table\_name](#output\_table\_name) | n/a |
<!-- END_TF_DOCS -->
