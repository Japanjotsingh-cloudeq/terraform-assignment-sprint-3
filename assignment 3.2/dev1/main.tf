# Creating group devops
 
resource "aws_iam_group" "devops" {
    count = var.group_name_bool ? 1:0
    name = var.iam_group_name
}
# create users
resource "aws_iam_user" "user" {
    for_each = var.iam_users
    name = each.key
    tags = each.value
}
 
# add users to a group :
resource "aws_iam_group_membership" "devops-users" {
    name = local.name
    users = [for i in aws_iam_user.user: i.name] 
    group =  aws_iam_group.devops[0].name
}
locals {
  name= "tf-testing-group-membership"
}