Quando('realizar uma requisição DELETE passando o id') do
    steps %{ 
        Quando requerir todos os usuários
        Quando sortear id
    }
    @request_users = users.delete_user(@id)
end