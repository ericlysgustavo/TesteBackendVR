Feature: Validar o JSON retornado pelo serviço VRPAT

  Scenario: Verificar a chave "typeOfEstablishment" e imprimir um tipo de estabelecimento aleatoriamente
    Given que faço uma solicitação GET para a URL "https://portal.vr.com.br/api-web/comum/enumerations/VRPAT"
    Then a resposta deve ter status 200
    And o JSON de resposta deve ter a chave "typeOfEstablishment"
    And eu imprimo um tipo de estabelecimento aleatoriamente