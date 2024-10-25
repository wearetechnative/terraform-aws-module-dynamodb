Create one or more examples here...

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

