Given('que faço uma solicitação GET para a URL {string}') do |url|
    @response = VrpatService.get(url)
  end
  
  Then('a resposta deve ter status {int}') do |status_code|
    expect(@response.code).to eq(status_code)
  end
  
  Then('o JSON de resposta deve ter a chave {string}') do |key|
    json_response = JSON.parse(@response.body)
    expect(json_response).to have_key(key)
  end
  
  Then('eu imprimo um tipo de estabelecimento aleatoriamente') do
    json_response = JSON.parse(@response.body)
    type_of_establishments = json_response['typeOfEstablishment']
  
    random_type = type_of_establishments.sample
    puts "Tipo de estabelecimento aleatório: #{random_type}"
  end