resource "google_storage_bucket" "billing_artifacts" {
  project                     = var.billing_project_id
  name                        = local.normalized_bucket_name
  location                    = var.dataset_location

  # Mirror the original: keep object versioning on
  versioning {
    enabled = true
  }

  # Uniform bucket-level access improves security posture; if you need fine-grained, flip this.
  uniform_bucket_level_access = true

  labels = local.bucket_labels

  # Sensible defaults; keep terraform-friendly behavior
  force_destroy = false
}
