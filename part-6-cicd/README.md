# sample-terraform

## about

- This repo is for documenting running Terraform with Google Cloud Build.
- It is written aside blogs described below.

## blog related

- [Blog] [Let's try: Terraform part 6 – CI/CD](https://bluebirz.net/posts/try-terraform-part-6)
- [Medium] [Let's try: Terraform part 6 – CI/CD](https://medium.com/@bluebirz/lets-try-terraform-part-6-ci-cd-ec6e4ea87503)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_google"></a> [google](#requirement\_google) | ~> 3.5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 3.90.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_bucket"></a> [bucket](#module\_bucket) | ../modules/buckets | n/a |

## Resources

| Name | Type |
|------|------|
| [google_storage_bucket.bucket](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket) | resource |
| [google_storage_bucket_object.object](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_object) | resource |
| [google_storage_bucket_object.object_2](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_object) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_my_bucket"></a> [my\_bucket](#input\_my\_bucket) | n/a | `string` | n/a | yes |
| <a name="input_my_bucket_class"></a> [my\_bucket\_class](#input\_my\_bucket\_class) | n/a | `string` | n/a | yes |
| <a name="input_my_bucket_location"></a> [my\_bucket\_location](#input\_my\_bucket\_location) | n/a | `string` | n/a | yes |
| <a name="input_my_project"></a> [my\_project](#input\_my\_project) | n/a | `string` | `"bluebirz-playground"` | no |
| <a name="input_object_spec"></a> [object\_spec](#input\_object\_spec) | n/a | <pre>object({<br/>    name    = string<br/>    content = string<br/>  })</pre> | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_object_path"></a> [object\_path](#output\_object\_path) | n/a |
<!-- END_TF_DOCS -->
