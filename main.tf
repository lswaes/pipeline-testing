terraform {
    backend "gcs" {
      bucket = "gcpdemo12april"
      prefix = "terraform/state"
    }
}

provider "google" {
  //credentials = file("terraform-cred.json")
  project     = "sam-gcp-terraform-pipeline"
  region      = "us-central1"
  zone        = "us-central1-c"
}

# resource "google_compute_instance" "virtual-machine" {
#   name = "test"
#   machine_type = "e2-medium"
#   zone = var.zone

#   boot_disk {
#     initialize_params {
#       image = "windows-cloud/windows-2022"
#     }
#   }

#   network_interface {
#     network=google_compute_network.vpc_network.id
#   }
# }
resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}


