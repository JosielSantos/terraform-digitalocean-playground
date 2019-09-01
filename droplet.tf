resource "digitalocean_droplet" "web" {
  count    = 2
  name     = "web-${count.index}"
  region   = "nyc1"
  size     = "s-1vcpu-1gb"
  image    = "ubuntu-18-04-x64"
  ssh_keys = [digitalocean_ssh_key.default.fingerprint]

  provisioner "remote-exec" {
    inline = [
      "apt update",
      "apt install -y apache2",
      "echo server-${count.index}>/var/www/html/index.html",
      "chown www-data:www-data /var/www/html/index.html",
    ]

    connection {
      type        = "ssh"
      host        = self.ipv4_address
      user        = "root"
      private_key = file("~/.ssh/id_rsa")
      timeout     = "2m"
    }
  }
}
