provider "vault" {}

data "vault_generic_secret" "gcp_auth" {
  path = "gcp/key/terraform"
}

provider "google" {
  credentials = base64decode(data.vault_generic_secret.gcp_auth.data.private_key_data)
  project     = var.project_name
}
