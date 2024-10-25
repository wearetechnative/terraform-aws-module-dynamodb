Create one or more examples here...

``
module "example-dynamodb-technative" {
  source = "git@github.com:wearetechnative/terraform-aws-module-dynamodb.git"

  name = "example-name"
  partition_key = "example-hash_key"
  partition_key_type = "S"
  range_key = "example-range_key"
  range_key_type = "S"
  kms_key_arn = "arn:aws:kms:eu-central-1:939665396134:key/92f91555-d967-4c52-a041-75f401fce0f1"
}
```

