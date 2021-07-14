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
- Projeto rodando no Docker;

Exemplo de como ficou o teste:

![cucumber][cucumber]

![report][report]

![docker][docker]

## Preparação do ambiente no Windows

Para usar este projeto é necessário ter instalado:

- Ruby 2.7.3.1 (versão usada neste projeto): linguagem de programação interpretada multiparadigma para executar os steps
- Bundler: Gerenciador das gems. Executar o seguinte comando:

  ```
  gem install bundler
  ```

## Execução dos testes

Para executar os testes pode-se rodar os seguintes comandos:

- Para executar todas as tags: `cucumber`
- Para execução de tags específicas: `cucumber –t @nome_da_tag`
- Para build da imagem: `docker build -t desafio-livelo .`
- Para executar o container: `docker run -d desafio-livelo`

[docker]: docker.gif
[report]: report.gif
[cucumber]: cucumber.gif
[desafio]: desafio.pdf
[1]: https://gorest.co.in
