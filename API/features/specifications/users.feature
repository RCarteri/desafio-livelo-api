#language: pt

@users
Funcionalidade: Users
    Validar operações da API GoRest

    @get_users
    Cenário: Validar GET
        Quando realizar uma requisição GET
        Entao deverá responder com 200
        E retornará a lista de usuários

    @get_users_exception_404
    Cenário: Validar GET Exception
        Quando realizar uma requisição GET com página inválida
        Entao deverá responder com 404

    @get_user
    Cenário: Validar GET com id
        Quando realizar uma requisição GET passando o id
        Então deverá responder com 200
        E retornará o usuário

    @get_user_exception_404
    Cenário: Validar GET com id Exception
        Quando realizar uma requisição GET passando o id inválido
        Então deverá responder com 404

    @post_user
    Cenário: Validar POST
        Quando realizar uma requisição POST
        Então deverá responder com 201
        E retornará o usuário criado

    @delete_user
    Cenário: Validar DELETE
        Quando realizar uma requisição DELETE passando o id
        Então deverá responder com 204
        E o usuário não deverá mais estar na lista

    @delete_user_exception_404
    Cenário: Validar DELETE com id Exception
        Quando realizar uma requisição DELETE passando o id inválido
        Então deverá responder com 404