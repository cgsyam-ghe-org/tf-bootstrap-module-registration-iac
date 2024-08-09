module "main" {
  source           = "../../root"
  tfe_org          = var.tfe_org
  ghe_oauth_token  = var.ghe_oauth_token
  modules_registry = var.modules_registry
}