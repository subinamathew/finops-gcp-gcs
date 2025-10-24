resource "google_storage_bucket" "billing_artifacts" {
  project  = var.billing_project_id
  name     = local.normalized_bucket_name
  location = var.dataset_location

  versioning {
    enabled = true
  }

  uniform_bucket_level_access = true
  labels                      = local.bucket_labels
  force_destroy               = false
}
