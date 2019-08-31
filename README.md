Esse é um repositório para testes do [Terraform][terraform] com o [DigitalOcean][digitalocean].

Antes de usar, crie a variável de ambiente "DIGITALOCEAN_ACCESS_TOKEN" com um token de API do DigitalOcean ([gerar aqui][do_get_api_token]).
Ou então adicione a linha
```
    token = "<YOUR_API_TOKEN>"
```
Ao bloco "provider" do arquivo "main.tf".

[terraform]: https://www.terraform.io/
[digitalocean]: https://digitalocean.com/
[do_get_api_token]: https://cloud.digitalocean.com/account/api/tokens/new
