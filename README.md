# Devops Playground Website

Static site code for [Devops playground repo](https://github.com/Vdraksic/Devops-Playground), built using [Hugo themes](https://themes.gohugo.io/themes/lekh/) under the MIT license.

## Deployment

The website is containerized using Docker and pushed to [ECR](https://aws.amazon.com/ecr/). Docker Compose is used to incorporate Certbot for the SSL certificate management.

## GitHub Actions

### push-ECR-on-merge

Triggered when code is merged, and it automatically pushes a Docker image to ECR if there were changes in the site code or Dockerfile. The image is tagged with the git sha.

### docker-CVE

On-demand CVE scan.

## Pre-commit Linters

Pre-commit linters:

- **yamllint**: Linter for YAML files.
- **hadolint**: Linter for Dockerfiles.

