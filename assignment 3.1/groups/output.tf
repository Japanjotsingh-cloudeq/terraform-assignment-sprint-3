output "gp" {
    value = [for i in aws_iam_group : i]
  
}