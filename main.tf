########################################
# Pub/Sub Topic
########################################
resource "google_pubsub_topic" "topic" {
  name = "${var.topic_name}-${var.environment}"

  message_retention_duration = "604800s" # 7 days

  labels = {
    environment = var.environment
  }
}


########################################
# Push Subscription
########################################
resource "google_pubsub_subscription" "subscription" {
  name  = "${var.subscription_name}-${var.environment}"
  topic = google_pubsub_topic.topic.name

  ack_deadline_seconds = var.ack_deadline_seconds

  push_config {
    push_endpoint = var.push_endpoint

    attributes = {
      x-goog-version = "v1"
    }
  }

  retry_policy {
    minimum_backoff = "10s"
    maximum_backoff = "600s"
  }

  expiration_policy {
    ttl = ""
  }

  labels = {
    environment = var.environment
  }
}

