require 'httparty'

World do
  class VrpatService
    include HTTParty
    base_uri 'https://portal.vr.com.br/api-web/comum/enumerations/VRPAT'
  end
end