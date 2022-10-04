output "gp" {
    value = [for i in aws_iam_user_group_membership : i]
  
}