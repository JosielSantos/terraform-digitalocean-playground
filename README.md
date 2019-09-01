Esse é um repositório para testes do [Terraform][terraform] com o [DigitalOcean][digitalocean].

Antes de usar, crie a variável de ambiente "DIGITALOCEAN_ACCESS_TOKEN" com um token de API do DigitalOcean ([gerar aqui][do_get_api_token]).

Essa configuração cria duas máquinas, adicionando a chave SSH do usuário logado no sistema, um load balancer apontando para essas duas máquinas e provisiona as máquinas com Apache e um arquivo diferente em cada uma delas pra testar se tudo funciona.

Depois que o apply for concluído, a ideia é acessar várias vezes pelo browser o IP do load balancer (o Terraform irá informar isso nas últimas linhas) e checar se hora é exibido "server-0", e hora "server-1".
Se isso acontecer, parabéns pra nós, pro DigitalOcean e pro Terraform! :)

**P.S**.: Se não quiser ser surpreendido depois de 30 dias com uma continha de $20 (talvez R$50000 de acordo com a cotação do dólar), rode "terraform destroy" depois de testar.

[terraform]: https://www.terraform.io/
[digitalocean]: https://digitalocean.com/
[do_get_api_token]: https://cloud.digitalocean.com/account/api/tokens/new
