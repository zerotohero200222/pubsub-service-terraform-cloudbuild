# Pub/Sub Topic
resource "google_pubsub_topic" "topic" {
  name = "${var.topic_name}-${var.environment}"
}

# Pub/Sub Subscription
resource "google_pubsub_subscription" "subscription" {
  name  = "${var.subscription_name}-${var.environment}"
  topic = google_pubsub_topic.topic.name

  ack_deadline_seconds = 20
  message_retention_duration = "86400s" # 1 day
}
