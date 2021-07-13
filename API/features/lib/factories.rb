require 'json'
require 'ffaker'
require_relative '../models/users'

# retorna um array com todos os ids resultantes do body do responde da API
def get_array_id(body)
    hash_body = JSON.parse(body)
    hash = hash_body['data']
    array_id = []
    i = 0
    hash.each do |line|
        array_id[i] = line['id']
        i += 1
    end
    array_id
end

def sort_id(body)
    array_id = get_array_id(body).sort
    array_id[rand(0..array_id.length)]
end

FactoryBot.define do
    factory :user, class: UsersModel do
        statuss = ['active', 'inactive']
        name { FFaker::NameBR.first_name }
        email { FFaker::Internet.free_email }
        gender { FFaker::Gender.binary }
        status { statuss[rand( 0..1 )] }
    end
end