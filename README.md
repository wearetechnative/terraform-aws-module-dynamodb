# Terraform AWS dynamodb ![](https://img.shields.io/github/actions/workflow/status/wearetechnative/terraform-aws-module-dynamodb/tflint.yaml?style=plastic)

This module implements DynamoDB and enforces or (at least) encourages best practices by default.

[![](we-are-technative.png)](https://www.technative.nl)

## How does it work

### First use after you clone this repository or when .pre-commit-config.yaml is updated

Run `pre-commit install` to install any guardrails implemented using pre-commit.

See [pre-commit installation](https://pre-commit.com/#install) on how to install pre-commit.

## Usage

To use this module ...

```hcl 
module "example-dynamodb-technative" {
  source = "git@github.com:wearetechnative/terraform-aws-module-dynamodb.git"

  name = "example-name"
  partition_key = "example-hash_key"
  partition_key_type = "S"
  range_key = "example-range_key"
  range_key_type = "S"
  kms_key_arn = "arn:aws:kms:<region>:<account-id>:key/<example-arn>"
}
```


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
| <a name="input_additional_tags"></a> [additional\_tags](#input\_additional\_tags) | Additional tags to be added to resources. | `map(string)` | `{}` | no |
| <a name="input_global_secondary_indexes"></a> [global\_secondary\_indexes](#input\_global\_secondary\_indexes) | Define global secondary indexes using this variable. | <pre>list(object({<br>    name = string<br>    hash_key = string<br>    hash_key_type = string<br>  }))</pre> | `[]` | no |
| <a name="input_kms_key_arn"></a> [kms\_key\_arn](#input\_kms\_key\_arn) | KMS key to use for encrypting RDS instances. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Prefix name for DynamoDB. Must be unique within the region. | `string` | n/a | yes |
| <a name="input_partition_key"></a> [partition\_key](#input\_partition\_key) | Partition key for DynamoDB table. | `string` | n/a | yes |
| <a name="input_partition_key_type"></a> [partition\_key\_type](#input\_partition\_key\_type) | Partition key type for DynamoDB table, can be S, N or B. | `string` | n/a | yes |
| <a name="input_range_key"></a> [range\_key](#input\_range\_key) | Sort key for DynamoDB table. | `string` | `null` | no |
| <a name="input_range_key_type"></a> [range\_key\_type](#input\_range\_key\_type) | Sort key type for DynamoDB table, can be S, N or B. | `string` | `null` | no |
| <a name="input_ttl_attribute_name"></a> [ttl\_attribute\_name](#input\_ttl\_attribute\_name) | Optional name of TTL attribute. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_table_arn"></a> [table\_arn](#output\_table\_arn) | n/a |
| <a name="output_table_name"></a> [table\_name](#output\_table\_name) | n/a |
<!-- END_TF_DOCS -->
