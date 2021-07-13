Quando('realizar uma requisição DELETE passando o id') do
    steps %{ 
        Quando requerir todos os usuários
        Quando sortear id
    }
    @request_users = users.delete_user(@id)
end

Quando('realizar uma requisição DELETE passando o id inválido') do
    @request_users = users.delete_user(0)
end

Então('o usuário não deverá mais estar na lista') do
    step 'requerir todos os usuários'
    expect(@request_users['data']).not_to include(@id)
    puts "Lista: #{@request_users['data']}"
    puts "Id deletado: #{@id}"
end