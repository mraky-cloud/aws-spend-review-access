resource "random_uuid" "externalid" {}

module "resource_spend_view_role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-assumable-role"
  version = "5.11.2"

  create_role = true

  role_path        = "/${var.company}/"
  role_name_prefix = "${var.company}-review"
  role_description = "Cloud spend review"

  # MFA only works for IAM users, secured by ExternalID
  role_requires_mfa   = false
  #role_sts_externalid = [ random_uuid.externalid.result ]

  trusted_role_arns = ["arn:aws:iam::${var.company_review_account}:root"]

  custom_role_policy_arns = [
    "arn:aws:iam::aws:policy/SecurityAudit",
    module.cost_explorer_policy.arn,
  ]
  number_of_custom_role_policy_arns = 2

  max_session_duration = var.max_session_duration
}

module "cost_explorer_policy" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-policy"

  name        = "CostExplorerReadAndView"
  path        = "/${var.company}/"
  description = "CostExplorer read-and-view policy"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
      {
          "Sid": "CostExplorerReadOnly",
          "Effect": "Allow",
          "Action": [
              "aws-portal:ViewBilling",
              "ce:Describe*",
              "ce:Get*",
              "ce:List*"
          ],
          "Resource": "*"
      }
  ]
}
EOF
}
