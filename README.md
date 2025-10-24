# Billing GCS Module

## Inputs
- `billing_project_id` (string) – GCP project to create resources in
- `iam_project_user` (string) – Service account **email** that should write objects
- `gcs_prefix` (string) – Bucket name prefix
- `billing_dataset_name` (string) – Dataset name appended to the prefix
- `dataset_location` (string) – Bucket location/region
- `labels` (map(string)) – Extra labels (merged with `cost-center=billing`)

## Outputs
- `bucket_name`
- `bucket_self_link`
- `bucket_url`

## Example

```hcl
module "billing_gcs" {
  source               = "./modules/billing-gcs"
  billing_project_id   = "my-project"
  iam_project_user     = "billing-writer@my-project.iam.gserviceaccount.com"
  gcs_prefix           = "acme-billing"
  billing_dataset_name = "finops_cud"
  dataset_location     = "EU"

  labels = {
    env = "prod"
  }
}
