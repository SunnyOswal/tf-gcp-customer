terraform {
  backend "gcs" {
    bucket  = "apptonate-customer1"
    prefix  = "terraform/state"
  }
}
