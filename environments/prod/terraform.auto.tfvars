tfe_org = "sr-test"
modules_registry = {
  "register_tf_module" = {
    repo_identifier = "cgsyam-ghe-org/tf-module-registration-iac"
    tags            = true
  }
  "wif_module" = {
    repo_identifier = "cgsyam-ghe-org/terraform-org-gcp-workload-identity"
    tags            = true
  }
  "core_workflow_module" = {
    repo_identifier = "cgsyam-ghe-org/terraform-org-platform-onboard"
    tags            = true
  }
  "init_core_workflow_module" = {
    repo_identifier = "cgsyam-ghe-org/init-core-workflow"
    tags            = true
  }
}