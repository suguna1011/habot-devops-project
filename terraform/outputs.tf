output "bucket_name" {
  value = google_storage_bucket.habot_bucket.name
}

output "dataset_name" {
  value = google_bigquery_dataset.habot_dataset.dataset_id
}
