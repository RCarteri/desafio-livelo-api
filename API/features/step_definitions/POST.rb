Quando('realizar uma requisição POST para o serviço Users') do
    @payload_users = build(:user).user_hash
    puts @payload_users
    @request_users = users.post_users(@payload_users)
end

Então('retorna o usuário criado') do
    expect(@request_users['data']['id']).to eql @payload_users[:id]
    expect(@request_users['data']['name']).to eql @payload_users[:name]
    expect(@request_users['data']['email']).to eql @payload_users[:email]
    expect(@request_users['data']['gender']).to eql @payload_users[:gender]
    expect(@request_users['data']['status']).to eql @payload_users[:status]
end