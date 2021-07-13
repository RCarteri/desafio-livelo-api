Quando('realizar uma requisição POST') do
    @payload_users = build(:user).user_hash
    @request_users = users.post_users(@payload_users)
end