resource "digitalocean_loadbalancer" "public" {
  name        = "lb-public"
  region      = "nyc1"
  droplet_ids = digitalocean_droplet.web[*].id

  forwarding_rule {
    entry_port      = 80
    entry_protocol  = "http"
    target_port     = 80
    target_protocol = "http"
  }

  healthcheck {
    port     = 22
    protocol = "tcp"
  }
}
