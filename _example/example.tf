
provider "digitalocean" {
  # You need to set this in your .bashrc
  # export DIGITALOCEAN_TOKEN="Your API TOKEN"
  #
}

module "vpc" {
  source      = "./../"
  name        = "vpc"
  environment = "test"
  label_order = ["environment", "name"]
  enable_vpc  = true
  region      = "bangalore-1"
  ip_range    = "10.0.0.0/16"
}
