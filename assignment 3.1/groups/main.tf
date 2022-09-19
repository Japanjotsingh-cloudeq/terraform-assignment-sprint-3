resource "aws_iam_group" "developer-dev1" {
  count = length(var.n2)
  name  = var.n2[count.index]

}
