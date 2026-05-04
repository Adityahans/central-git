# ./outputs.tf (ROOT directory)

output "all_bucket_urls" {
  value = { for k, m in module.gcs_buckets : k => m.bucket_url }
}
