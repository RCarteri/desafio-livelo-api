Quando('realizar uma requisição GET para o serviço Users') do
  @request_users = users.get_users
end

Então('deverá responder com {int}') do |status_code|
  expect(@request_users.code).to eq status_code
end

Então('retornará a lista de usuários') do
  expect(@request_users.message).not_to be_empty
end
