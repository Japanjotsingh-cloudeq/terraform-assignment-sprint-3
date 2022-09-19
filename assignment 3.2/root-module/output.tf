output "users" {
  value = [for i in var.test_iam_users : i]

}
output "group" {
  value = var.test_iam_group_name

}
output "condition" {
  value = var.test_group_name_bool

}
output "module-output-arn" {
  value = module.IAM_Group["0"].group-arn-output
}