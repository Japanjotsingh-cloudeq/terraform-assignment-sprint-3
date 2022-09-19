# resource "aws_iam_group" "developer-dev1" {
#   count = length(var.name1)
#   name  = var.name1[count.index]

# }

resource "aws_iam_user" "dev22-a" {
  count = length(var.n1S)
  name  = var.n1S[count.index]

  #path = "/"
 tags = {
  name ="japanjot"
  owner = "japanjot-ceq"
 }
}
# resource "aws_iam_group_membership" "jap-dev" {
#   name = "jap-dev"

#   users = [
#     aws_iam_user.dev22-a[0].name,
#     aws_iam_user.dev22-a[1].name

#   ]
#   group = aws_iam_group.developer-dev1[0].name

# }
# # data "aws_iam_users" "users" {
# #   path_prefix = "/"
# # }
# # resource "aws_iam_group_membership" "jap-dev2" {
# #   name = "jap-dev1"

# #   users = [
# #     data.aws_iam_users.users.names
# #   ]
# #   group = aws_iam_group.developer-dev1.name
# # }