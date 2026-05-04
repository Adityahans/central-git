variable "bucket_list" {
  type = map(object({
    bucket_name   = string
    location      = string
    lifecycle_age = number
    force_destroy = string
    role          = string
  }))
}
variable "service_account_email" {
  type = string
}

