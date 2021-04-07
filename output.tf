output "droplet_ips" {
  value = digitalocean_droplet.web[*].ipv4_address
}

output "load_balancer_ip" {
  value = digitalocean_loadbalancer.public.ip
}

output "database_password" {
  value = digitalocean_database_user.username.password
}

output "database_uri" {
  value = digitalocean_database_cluster.postgres.uri
}
