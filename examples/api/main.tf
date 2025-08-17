provider "oci" {}

module "api" {
  source      = "../../"
  api         = var.api
  compartment = var.compartment
}
