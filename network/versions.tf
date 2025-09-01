# Terraform Settings Block
terraform {
  required_version = ">= 1.9"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">= 6.46.0"
    }
  }
  backend "gcs" {
    bucket = "mydeen-portal"
    prefix = "report/network"
  }  
}

# Terraform Provider Block
provider "google" {
  project = "gcp-project-468305"
  region = var.gcp_region1
}