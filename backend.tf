terraform {
  backend "gcs" {
    bucket  = "terraform-lab-terraform-state-bucket"
    prefix  = "terraform/state"  # Optional path
  }
}
