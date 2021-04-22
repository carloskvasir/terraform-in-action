terraform {
  required_version = ">= 0.15, < 0.16"
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = ">= 2, <3"
    }
  }
}
