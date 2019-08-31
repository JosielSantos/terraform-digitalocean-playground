output "droplets_ipv4_addresses" {
  value = digitalocean_droplet.web[*].ipv4_address
}

output "loadbalancer_ip_address" {
  value = digitalocean_loadbalancer.public.ip
}
