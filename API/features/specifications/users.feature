#language: pt

@users
Funcionalidade: Users
    Validar operações da API GoRest

    @get_users
    Cenario: Validar GET
        Quando realizar uma requisição GET para o serviço Users
        Entao deverá responder com 200
        E retornará a lista de usuários

    @get_user
    Cenário: Validar GET com id
        Quando realizar uma requisição GET para o serviço Users passando id
        Então deverá responder com 200
        E retornará o usuário