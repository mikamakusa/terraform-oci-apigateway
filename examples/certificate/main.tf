provider "oci" {}

module "certificate" {
  source      = "../../"
  certificate = var.certificate
  compartment = var.compartment
}
