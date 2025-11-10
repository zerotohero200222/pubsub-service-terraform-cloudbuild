# Pub/Sub Deployment with Terraform using Cloud Build

This repository automates the creation of **Pub/Sub topics and subscriptions** on GCP using **Terraform**, managed through **Cloud Build** CI/CD.

## Flow

1. Developer updates `environments/*.tfvars` and pushes changes to `main`.
2. Cloud Build trigger runs automatically.
3. Terraform:
   - Initializes configuration.
   - Plans and applies infrastructure changes.
4. Pub/Sub resources are created or updated.

## Prerequisites

Enable required APIs:
```bash
gcloud services enable pubsub.googleapis.com cloudbuild.googleapis.com iam.googleapis.com
