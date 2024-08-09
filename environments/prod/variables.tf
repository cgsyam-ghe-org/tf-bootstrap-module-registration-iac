variable "tfe_org" {
  description = "The name of the organization associated with the registry module"
  type        = string
  default     = null
  sensitive   = true
}

variable "ghe_oauth_token" {
  type      = string
  sensitive = true
}

variable "tfe_teams_api_token" {
  type      = string
  sensitive = true
}

variable "modules_registry" {
  type = map(object({
    repo_identifier     = string
    repo_branch         = optional(string, "")
    ghe_installation_id = optional(string, null)
    tags                = bool
  }))
}