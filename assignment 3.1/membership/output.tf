output "memb" {
    value = [for i in var.g1 : i]
  
}
output "mem" {
    value = [for i in var.a1 : i]
  
}