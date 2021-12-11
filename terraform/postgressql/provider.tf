terraform {
  required_providers {
    google = {
      version = "= 3.90.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  credentials = file("file.json")
}