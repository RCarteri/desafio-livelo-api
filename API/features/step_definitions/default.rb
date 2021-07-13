Quando('requerir todos os usuários') do
    @request_users = users.get_users
end

Quando('sortear id') do
    @id = sort_id(@request_users.body)
end

Então('deverá responder com {int}') do |status_code|
    expect(@request_users.code).to eq status_code
end