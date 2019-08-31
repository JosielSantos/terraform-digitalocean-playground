provider "digitalocean" {
  version = "~> 1.7"
}

resource "digitalocean_ssh_key" "default" {
  name       = "Terraform"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "digitalocean_droplet" "web" {
  name     = "web"
  region   = "nyc1"
  size     = "s-1vcpu-1gb"
  image    = "ubuntu-18-04-x64"
  ssh_keys = [digitalocean_ssh_key.default.fingerprint]
}

output "ipv4_address" {
  value = digitalocean_droplet.web.ipv4_address
}

