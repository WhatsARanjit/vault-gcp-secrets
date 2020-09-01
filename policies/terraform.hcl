path "gcp/key/terraform" {
  capabilities = [ "read" ]
}

path "auth/token/create" {
  capabilities = [ "list", "read", "create", "update", "delete" ]
}
