resource "google_storage_bucket" "habot_bucket" {
  name          = var.bucket_name
  location      = var.region
  force_destroy = true

  uniform_bucket_level_access = true
}

resource "google_bigquery_dataset" "habot_dataset" {
  dataset_id = var.dataset_name
  location   = var.region
}
