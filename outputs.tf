output "bucket_name" {
  description = "Name of the GCS bucket for billing artifacts."
  value       = google_storage_bucket.billing_artifacts.name
}

output "bucket_self_link" {
  description = "Self link of the GCS bucket."
  value       = google_storage_bucket.billing_artifacts.self_link
}

output "bucket_url" {
  description = "Console URL for the bucket."
  value       = "https://console.cloud.google.com/storage/browser/${google_storage_bucket.billing_artifacts.name}"
}
