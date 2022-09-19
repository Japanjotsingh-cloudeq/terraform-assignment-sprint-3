module "iams" {
  source = "../groups"
  n2     = var.d1
}

module "iama" {
  source = "../IAMA"
  n1S    = var.d2

}

module "membership" {
  source = "../membership"
  g1     = var.d1
  a1     = var.d2
  depends_on = [
    module.iama,
    module.iams
  ]

}



