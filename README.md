# Semaphore and Kubernetes Deployment Example

This repository configures a pipeline to push a Docker image to a GCP
Container Registry, then deploy it to Kubernetes. It assumes
authentication happens with a GCP Service Account with access to Cloud
Storage and Container Engine. Here's the setup instructions.

1. Download the service account's authentication key JSON file to your
   computer. Assume it's `key.json`.
1. Run `base64 key.json` and save the output
1. Open `secret.yml` and pasted in the base64 encoded output into the
   `content` key
1. Create the secret with `sem`: `sem create -f secret.yml`
1. Remove `secret.yml` from source control
1. Replace placeholder values in `.semaphore/semaphore.yml` with your
   GCP Project ID, GKE Cluster Name, and GCP zone.
1. Commit and push!
