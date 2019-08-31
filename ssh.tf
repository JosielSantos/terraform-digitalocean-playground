resource "digitalocean_ssh_key" "default" {
  name       = "Terraform"
  public_key = file("~/.ssh/id_rsa.pub")
}
