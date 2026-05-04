terraform {
  backend "gcs" {
    bucket = "your-existing-terraform-state-bucket" # Change this!
    prefix = "terraform/state"
  }
}
