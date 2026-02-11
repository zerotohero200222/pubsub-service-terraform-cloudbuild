variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "environment" {
  type = string
}

variable "topic_name" {
  type = string
}

variable "subscription_name" {
  type = string
}

variable "push_endpoint" {
  type    = string
  default = "https://dummy-endpoint.example.com/pubsub"
}

variable "ack_deadline_seconds" {
  type    = number
  default = 20
}

