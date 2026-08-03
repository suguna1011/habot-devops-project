variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
}

variable "region" {
  description = "Google Cloud Region"
  type        = string
  default     = "asia-south1"
}

variable "bucket_name" {
  description = "Cloud Storage Bucket Name"
  type        = string
}

variable "dataset_name" {
  description = "BigQuery Dataset Name"
  type        = string
}