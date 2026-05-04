bucket_list = {
  "bucket_1" = { bucket_name = "value", location = "US", lifecycle_age = 30, force_destroy = true, role = "roles/storage.objectViewer" }
  "bucket_2" = { bucket_name = "value", location = "US", lifecycle_age = 7, force_destroy = true, role = "roles/storage.objectAdmin" }
  "bucket_3" = { bucket_name = "value", location = "US", lifecycle_age = 90, force_destroy = true, role = "roles/storage.admin" }
  "bucket_4" = { bucket_name = "value", location = "US", lifecycle_age = 60, force_destroy = true, role = "roles/storage.objectViewer" }
  "bucket_5" = { bucket_name = "value", location = "US", lifecycle_age = 1, force_destroy = true, role = "roles/storage.legacyBucketReader" }
}
service_account_email = "your-service-account@your-project-id.iam.gserviceaccount.com"
