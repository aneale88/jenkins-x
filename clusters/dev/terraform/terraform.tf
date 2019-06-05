terraform {
  required_version = ">= 0.12.0"
  backend "gcs" {
    bucket      = "direct-variety-202215-sighttopaz-terraform-state"
    prefix      = "dev"
  }
}