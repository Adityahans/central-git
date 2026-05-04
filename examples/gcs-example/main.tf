provider "google" {
  project = local.project_id
  region  = local.region
}

module "gcs_buckets" {
  source   = "../../custom_modules/gcs"
  for_each = var.bucket_list

  bucket_name           = each.value.bucket_name
  location              = each.value.location
  lifecycle_age         = each.value.lifecycle_age
  force_destroy         = each.value.force_destroy
  role                  = each.value.role
  service_account_email = var.service_account_email
}
