## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | 3.4.3 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cost_explorer_policy"></a> [cost\_explorer\_policy](#module\_cost\_explorer\_policy) | terraform-aws-modules/iam/aws//modules/iam-policy | n/a |
| <a name="module_resource_spend_view_role"></a> [resource\_spend\_view\_role](#module\_resource\_spend\_view\_role) | terraform-aws-modules/iam/aws//modules/iam-assumable-role | 5.11.2 |

## Resources

| Name | Type |
|------|------|
| [random_uuid.externalid](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/uuid) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_company"></a> [company](#input\_company) | Used as path and prefix in IAM resources | `string` | `"mraky"` | no |
| <a name="input_company_review_account"></a> [company\_review\_account](#input\_company\_review\_account) | AWS account ID from which the review role can be assumed | `string` | `"090666209173"` | no |
| <a name="input_max_session_duration"></a> [max\_session\_duration](#input\_max\_session\_duration) | Maximum length of session created for the review role in seconds | `number` | `28800` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_externalid"></a> [externalid](#output\_externalid) | n/a |
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | n/a |
| <a name="output_role_name"></a> [role\_name](#output\_role\_name) | n/a |
| <a name="output_role_path"></a> [role\_path](#output\_role\_path) | n/a |
