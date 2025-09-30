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

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_bucket"></a> [bucket](#module\_bucket) | ../modules/buckets | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_my_bucket"></a> [my\_bucket](#input\_my\_bucket) | n/a | `string` | n/a | yes |
| <a name="input_my_bucket_class"></a> [my\_bucket\_class](#input\_my\_bucket\_class) | n/a | `string` | n/a | yes |
| <a name="input_my_bucket_location"></a> [my\_bucket\_location](#input\_my\_bucket\_location) | n/a | `string` | n/a | yes |
| <a name="input_my_project"></a> [my\_project](#input\_my\_project) | n/a | `string` | `"bluebirz-playground"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
