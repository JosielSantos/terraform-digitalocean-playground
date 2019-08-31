resource "digitalocean_droplet" "web" {
  name     = "web"
  region   = "nyc1"
  size     = "s-1vcpu-1gb"
  image    = "ubuntu-18-04-x64"
  ssh_keys = [digitalocean_ssh_key.default.fingerprint]
}
