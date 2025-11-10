variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "environment" {
  description = "Deployment environment (dev, uat, prod)"
  type        = string
}

variable "topic_name" {
  description = "Pub/Sub topic name"
  type        = string
}

variable "subscription_name" {
  description = "Pub/Sub subscription name"
  type        = string
}
