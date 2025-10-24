resource "google_storage_bucket_iam_member" "object_creator" {
  bucket = google_storage_bucket.billing_artifacts.name
  role   = "roles/storage.objectCreator"
  member = "serviceAccount:${var.iam_project_user}"
}
