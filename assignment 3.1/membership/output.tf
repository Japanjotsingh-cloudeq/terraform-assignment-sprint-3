output "memb" {
    value = [for i in aws_iam_user_group_membership.jap-dev2.name: i]
  
}
output "mem" {
    value = [for i in aws_iam_user_group_membership.group  : i]
  
}