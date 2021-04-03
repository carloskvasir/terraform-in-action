variable "do_token" {
  type        = string
  description = "Token for digitalocean"
}

variable "droplet_ssh_keys" {
  type        = list(string)
  description = "Fingerprint of ssh keys in digitalocean"
}

variable "droplet_image" {
  type        = string
  description = "Base image for droplet"
  default     = "ubuntu-20-04-x64"
}

variable "droplet_region" {
  type        = string
  description = "Region base default"
  default     = "ams3"
}

variable "droplet_size" {
  type        = string
  description = "Default size of droplets"
  default     = "s-1vcpu-1gb"
}

variable "droplet_names" {
  type    = list(string)
  default = ["tango", "forro"]
}
