resource "digitalocean_droplet" "web" {
  count    = 2
  name     = "web-${count.index}"
  region   = "nyc1"
  size     = "s-1vcpu-1gb"
  image    = "ubuntu-18-04-x64"
  ssh_keys = [digitalocean_ssh_key.default.fingerprint]
}
