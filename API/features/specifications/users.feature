#language: pt

@users
Funcionalidade: Users
    Validar operações da API GoRest

    @get_users
    Cenario: Validar GET
        Quando realizar uma requisição GET
        Entao deverá responder com 200
        E retornará a lista de usuários

    @get_user
    Cenário: Validar GET com id
        Quando realizar uma requisição GET passando o id
        Então deverá responder com 200
        E retornará o usuário

    @post_user
    Cenário: Validar POST
        Quando realizar uma requisição POST
        Então deverá responder com 201
        E retornará o usuário criado

    @delete_user
    Cenário: Validar DELETE
        Quando realizar uma requisição DELETE passando o id
        Então deverá responder com 204