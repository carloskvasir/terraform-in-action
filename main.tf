resource "digitalocean_droplet" "web" {
  image    = var.droplet_image
  name     = var.droplet_names[count.index]
  region   = var.droplet_region
  size     = var.droplet_size
  ssh_keys = var.droplet_ssh_keys

  lifecycle {
    create_before_destroy = true
  }

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "root"
      host        = digitalocean_droplet.web[count.index].ipv4_address
      timeout     = "2m"
      private_key = file(var.private_key_path)
    }

    inline = [
      "curl -fsSL https://get.docker.com | sh",
      "docker run -d -p 80:80 nginx"
    ]
  }

  count = length(var.droplet_names)
}
