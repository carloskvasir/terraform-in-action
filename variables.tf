variable "do_token" {
  type        = string
  description = "Token for digitalocean"
}

variable "private_key_path" {
  type        = string
  description = "Path to private ssh key"
  default     = "~/.ssh/id_rsa"
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

variable "datacenter_region" {
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
  default = ["tango"]
}

variable "lb_name" {
  type        = string
  description = "Name of loadbalancer"
  default     = "loadbalancer"
}

variable "pg_cluster_name" {
  type        = string
  description = "Name of cluster for postgres"
  default     = "postgres-cluster"
}

variable "pg_cluster_version" {
  type        = string
  description = "Version for postgres"
  default     = "12"
}

variable "pg_cluster_size" {
  type        = string
  description = "Size of machine for database"
  default     = "db-s-1vcpu-1gb"
}

variable "pg_nodes_count" {
  type        = number
  description = "Number of nodes in db cluster"
  default     = 1
}

variable "database_name" {
  type        = string
  description = "Name for database"
  default     = "limerick"
}
