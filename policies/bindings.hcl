resource "//cloudresourcemanager.googleapis.com/projects/ranjit-demo" {
  roles = [
    "roles/compute.admin",
    "roles/container.admin",
    "roles/iam.serviceAccountUser"
  ]
}
