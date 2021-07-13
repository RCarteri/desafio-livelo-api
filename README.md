# Desafio Livelo API

Este é um desafio da Livelo para testar as habilidades com automação de APIs.

Como exemplo foi utilizada a API [GoRest][1] para testar o GET, POST e DELETE.

Devido ao tempo escasso não foi possível realizar todo o desafio.

Atividades completas:

- GET de todos os usuários cadastrados (somente cenário de sucesso);
- GET de um usuário específico passado por parâmetro (somente cenário de sucesso);
- Geração de report;

Faltaram:

- Autenticar na API para realizar o POST e DELETE;
- Criação do dockerfile;

## Preparação do ambiente no Windows

Para usar este projeto é necessário ter instalado:

- [Ruby 2.7.3.1][4] (versão usada neste projeto): linguagem de programação interpretada multiparadigma para executar os steps
- Bundler: Gerenciador das gems. Executar o seguinte comando:

  ```
  gem install bundler
  ```

## Execução dos testes

Para executar os testes pode-se rodar os seguintes comandos:
`cucumber`
Para execução de tags específicas: `cucumber –t @nome_da_tag`

## Explicando o Gemfile

O Gemfile é um arquivo onde armazena a coleção de gems que o projeto vai precisar. Com ele não é obrigado a instalar gem a gem manualmente.

Pra começar um projeto, é necessário uma gem chamada bundler, que servirá como gerenciador das gems e suas dependências através do arquivo Gemfile. Para instalar, basta executar o comando:

```
gem install bundler
```

No template utilizado, o Gemfile já usa algumas gems, abaixo uma breve introdução sobre cada uma:

```
source 'http://rubygems.org' # Repositório onde o bundler vai buscar as gems para instalar
gem 'cucumber'  # gem que faz a interface da documentação com o código ruby https://cucumber.io/.
gem 'factory_bot'   # gem que ajuda na criação payload https://github.com/thoughtbot/factory_bot.
gem 'ffaker' # gem que gera dados fake https://github.com/faker-ruby/faker.
gem 'httparty'  # gem responsável pelas requisições de web services https://github.com/jnunemaker/httparty.
gem 'rspec' # gem que permite fazer as asserções https://rspec.info/.
gem 'pry' # debug do código
```

Após criar o Gemfile, é necessário executar o comando a seguir para instalar todas as gems e suas dependências.

```
bundle install
```

Com as gems já instaladas, para iniciar o projeto executar o seguinte comando:

```
cucumber --init
```

Assim será criada a estrutura básica para início do desenvolvimento:

```
create   features
create   features/step_definitions
create   features/support
create   features/support/env.rb
```

Geralmente se cria a pasta specifications. A seguir uma descrição sobre cada uma:

- specifications: usada para os arquivos .features;
- step_definitions: usada para os arquivos de steps .rb;
- support: usada para colocar qualquer tipo de configuração para os testes também .rb
- env.rb: arquivo de configuração para os testes, nele deve conter TODAS as gems que você quer utilizar, antecedidos de um require e também alguma configuração específica para que TODA vez que eu rodar o comando cucumber, ele olhe nesse arquivo, verifica as gems e as configurações para poder seguir com o teste.

[1]: https://gorest.co.in
