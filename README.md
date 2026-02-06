# Terraform GCP Demo

Simple Terraform configuration that creates a Compute Engine VM on Google Cloud Platform.


## Credits and Inspiration.
- Huge thanks to Abhishek Veeramalla for his incredibly clear and practical Terraform explanation.  


## Features
- Uses variables for customization
- Configured GCS remote backend
- Clean destroy supported

## Prerequisites
- Terraform >= 1.2
- GCP project with billing enabled
- Service account with Compute permissions

## Usage

1. Copy `terraform.tfvars.example` → `terraform.tfvars`
2. Fill in your `project_id` `region_name` `zone`
3. Run:

```bash
terraform init
terraform plan
terraform apply
terraform destroy

