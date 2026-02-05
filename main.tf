terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"  # Updated for 2026 compatibility
    }
  }
  required_version = ">= 1.2.0"
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_instance" "app_server" {
  name         = "terraform-deomo-vm"
  machine_type = "e2-micro" 
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-12"
    }
  }

  network_interface {
    network = "default"
    access_config {}  # Assigns external IP
  }

  tags = ["terraform-demo"]
}
