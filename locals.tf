locals {
  raw_bucket_name = join("_", compact([var.gcs_prefix, var.billing_dataset_name]))
  normalized_bucket_name_step1 = lower(regexreplace(local.raw_bucket_name, "[^a-z0-9._-]", "-"))
  normalized_bucket_name       = regexreplace(regexreplace(local.normalized_bucket_name_step1, "^[._-]+", ""), "[._-]+$", "")

  bucket_labels = merge(
    {
      "cost-center" = "billing"
    },
    var.labels
  )
}
