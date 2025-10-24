locals {
  # Keep the original naming shape: <prefix>_<dataset>
  raw_bucket_name = join("_", compact([var.gcs_prefix, var.billing_dataset_name]))

  # Lowercase to be safe (GCS requires lowercase)
  normalized_bucket_name = lower(local.raw_bucket_name)

  bucket_labels = merge(
    { "cost-center" = "billing" },
    var.labels
  )
}
