variable "group_name_bool" {
  type = bool
}
variable "iam_group_name"{
  type = string
}
variable "iam_users" {
  type = map(any)
}
