output "memb" {
    value = [for i in aws_iam_user_group_membership.jap-dev2.user: i]
  
}
output "mem" {
    value = [for i in aws_iam_user_group_membership.japa-dev2.group  : i]
  
}