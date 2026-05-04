

resource "google_storage_bucket" "this" {


  name          = var.bucket_name
  location      = var.location
  force_destroy = var.force_destroy

  uniform_bucket_level_access = true

  lifecycle_rule {
    condition {
      age = var.lifecycle_age
    }
    action {
      type = "Delete"
    }
  }
}

resource "google_storage_bucket_iam_member" "sa_access" {


  bucket = google_storage_bucket.this.name
  role   = var.role
  member = "serviceAccount:${var.service_account_email}"
}

