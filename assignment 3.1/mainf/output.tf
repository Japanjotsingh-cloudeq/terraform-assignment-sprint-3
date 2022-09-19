output "group" {
    value = [for i in var.d1 : i]
  
}
output "user" {
    value = [for i in var.d2 : i]
  
}
output "memberp" {
    value = module.membership.memb
  
}
output "membersp" {
    value = module.membership.mem
  
}