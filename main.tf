terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }
  required_version = ">= 1.1.0"

  cloud {
    organization = "YoHashi"

    workspaces {
      name = "gcp-tf-examples"
    }
  }
}

provider "google" {

  project = var.project
  region  = var.region
  #"us-central1"
  zone    = var.zone
  #"us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}