output "externalid" {
  value = random_uuid.externalid.result
}

output "role_name" {
  value = module.resource_spend_view_role.iam_role_name
}
output "role_arn" {
  value = module.resource_spend_view_role.iam_role_arn
}
output "role_path" {
  value = module.resource_spend_view_role.iam_role_path
}
