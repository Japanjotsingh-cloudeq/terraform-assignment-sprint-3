output "urs" {
    value = [for i in aws_iam_user.dev22-a : i]
  
}