/**
 * Copyright 2024 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

resource "tfe_oauth_client" "ghe_oauth" {
  organization     = var.tfe_org
  api_url          = "https://api.github.com"
  http_url         = "https://github.com"
  oauth_token      = var.ghe_oauth_token
  service_provider = "github"
}

resource "tfe_registry_module" "module_registry" {
  for_each     = var.modules_registry
  name         = each.key
  organization = var.tfe_org
  vcs_repo {
    display_identifier         = each.value.repo_identifier
    identifier                 = each.value.repo_identifier
    oauth_token_id             = tfe_oauth_client.ghe_oauth.oauth_token_id
    branch                     = each.value.repo_branch
    github_app_installation_id = each.value.ghe_installation_id
    tags                       = each.value.tags
  }
}






