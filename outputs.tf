output "pubsub_topic_name" {
  description = "The created Pub/Sub topic"
  value       = google_pubsub_topic.topic.name
}

output "pubsub_subscription_name" {
  description = "The created Pub/Sub subscription"
  value       = google_pubsub_subscription.subscription.name
}
