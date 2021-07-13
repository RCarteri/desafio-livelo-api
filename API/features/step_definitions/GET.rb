Quando('realizar uma requisição GET') do
  step 'requerir todos os usuários'
end

Quando('realizar uma requisição GET passando o id') do
  steps %{ 
    Quando requerir todos os usuários
    Quando sortear id
  }
  @request_users = users.get_user(@id)
end

Quando('realizar uma requisição GET com página inválida') do
  @request_users = users.get_users_exception
end

Quando('realizar uma requisição GET passando o id inválido') do
  @request_users = users.get_user(0)
end

Então('retornará a lista de usuários') do
  expect(@request_users.message).not_to be_empty
  puts "Request body: #{@request_users['data']}"
  puts "Request code: #{@request_users.code}"
end

Então('retornará o usuário') do
  expect(@request_users.parsed_response['data']['id']).to eql @id
  puts "Request body: #{@request_users['data']}"
  puts "Request code: #{@request_users.code}"
end

Então('retornará o usuário criado') do
  expect(@request_users['data']['name']).to eql @payload_users[:name]
  expect(@request_users['data']['email']).to eql @payload_users[:email]
  expect(@request_users['data']['gender']).to eql @payload_users[:gender]
  expect(@request_users['data']['status']).to eql @payload_users[:status]
end 