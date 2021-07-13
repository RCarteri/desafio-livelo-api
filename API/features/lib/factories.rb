require 'json'

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
    rand(array_id.first..array_id.last)
end