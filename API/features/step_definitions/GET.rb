Quando('requerir todos os usuários') do
  @request_users = users.get_users
end

Quando('realizar uma requisição GET para o serviço Users') do
  step 'requerir todos os usuários'
end

Quando('realizar uma requisição GET para o serviço Users passando id') do
  step 'requerir todos os usuários'
  @id = sort_id(@request_users.body)
  @request_users = users.get_user(@id)
end

Então('deverá responder com {int}') do |status_code|
  expect(@request_users.code).to eq status_code
end

Então('retornará a lista de usuários') do
  expect(@request_users.message).not_to be_empty
end

Então('retornará o usuário') do
  expect(@request_users.parsed_response['data']['id']).to eql @id
end