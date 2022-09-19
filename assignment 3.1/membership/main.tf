# resource "aws_iam_group_membership" "jap-dev" {

#   name  = "jap-dev"
#   count = length(var.a1)
#   users = [for i in var.a1 : i]           # group_membership 
#   group = var.g1[count.index]

# }
resource "aws_iam_user_group_membership" "jap-dev2" {
  count = length(var.g1)
  user =var.a1[count.index]
  groups = [for i in var.g1 : i]        # user_group_membership
}
