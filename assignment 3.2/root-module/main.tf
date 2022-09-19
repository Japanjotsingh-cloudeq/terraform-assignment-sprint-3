module "IAM_Group" {
  source          = "../dev1"
  group_name_bool = var.test_group_name_bool
  iam_group_name  = var.test_iam_group_name
  for_each        = var.test_iam_users
  iam_users       = each.value.user
}