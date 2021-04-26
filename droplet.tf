data "digitalocean_droplet_snapshot" "snap" {
  region = var.datacenter_region
  name   = var.droplet_image
}
resource "digitalocean_droplet" "web" {
  image    = data.digitalocean_droplet_snapshot.snap.id
  name     = var.droplet_names[count.index]
  region   = var.datacenter_region
  size     = var.droplet_size
  ssh_keys = var.droplet_ssh_keys
  tags     = ["webserver"]

  lifecycle {
    create_before_destroy = true
  }

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "root"
      host        = self.ipv4_address
      timeout     = "2m"
      private_key = file(var.private_key_path)
    }

    inline = [
      "docker run -d -p 80:8080 -e DATABASE_URL=${digitalocean_database_cluster.postgres.uri} -e ENVIRONMENT=${var.environment_name} igordcsouza/hc-terraform"
    ]
  }

  count = length(var.droplet_names)
}

