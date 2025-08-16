module "identity" {
  source      = "./modules/terraform-oci-identity"
  compartment = var.compartment
}

module "logging" {
  source         = "./modules/terraform-oci-logging"
  compartment_id = module.identity.compartment[0].compartment_id
  log_group      = var.log_group
  log            = var.log
}