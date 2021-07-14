# Desafio Livelo API

Este é um [desafio][desafio] da Livelo para testar as habilidades com automação de APIs.

Como exemplo foi utilizada a API [GoRest][1] para testar o GET, POST e DELETE.

Devido ao tempo escasso não foi possível realizar todo o desafio.

Atividades completas:

- GET de todos os usuários cadastrados;
- GET de um usuário específico passado um id já existente;
- Autenticação da API por token para realizar o POST e DELETE;
- POST para criação de um novo usuário;
- DELETE para remoção de um usuário já criado;
- Geração de report com HTML e JSON com a gem report_builder;

Faltaram:

- Conclusão do Dockerfile;

Exemplo de como ficou o teste:

![gif][gif]

## Preparação do ambiente no Windows

Para usar este projeto é necessário ter instalado:

- Ruby 2.7.3.1 (versão usada neste projeto): linguagem de programação interpretada multiparadigma para executar os steps
- Bundler: Gerenciador das gems. Executar o seguinte comando:

  ```
  gem install bundler
  ```

## Execução dos testes

Para executar os testes pode-se rodar os seguintes comandos:
`cucumber`
Para execução de tags específicas: `cucumber –t @nome_da_tag`

[gif]: desafio_livelo.gif
[desafio]: desafio.pdf
[1]: https://gorest.co.in
