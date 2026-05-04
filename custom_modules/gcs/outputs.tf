# ../../custom_modules/gcs/outputs.tf

output "bucket_url" {
  description = "The base URL of the bucket created in this module instance."
  value       = google_storage_bucket.this.url
}
