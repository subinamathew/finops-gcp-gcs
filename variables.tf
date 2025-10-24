# The GCP project ID where resources will be created.
variable "billing_project_id" {
  type        = string
  description = "GCP project ID to create resources in."
}

# The service account that requires access to the created resources.
variable "iam_project_user" {
  type        = string
  description = "Principal (service account email or member string) that can write objects to the bucket."
}

# Prefix for the GCS bucket name.
variable "gcs_prefix" {
  type        = string
  description = "Bucket name prefix (e.g., 'acme-billing')."
}

# The name of the billing dataset, used to construct the GCS bucket name.
variable "billing_dataset_name" {
  type        = string
  description = "Billing dataset name used to build the bucket name."
}

# The location for the GCS bucket.
# It's recommended this matches the BigQuery dataset location for data locality.
variable "dataset_location" {
  type        = string
  description = "GCS bucket location/region (e.g., 'EU', 'US', 'europe-west1')."
}

# Optional map of additional labels to merge into the bucket.
variable "labels" {
  type        = map(string)
  description = "Additional labels to apply to the bucket."
  default     = {}
}
