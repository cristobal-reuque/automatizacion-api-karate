@allTest
Feature: Consultar Mascota - API Petstore con Karate

  Background:
    * url 'https://petstore.swagger.io/v2'
    * def randomId = Math.floor(Math.random() * 1000000)
    * def petBody =
    """
    {
      "id": #(randomId),
      "category": {
        "id": 1,
        "name": "dogs"
      },
      "name": "balto",
      "photoUrls": [
        "string"
      ],
      "tags": [
        {
          "id": 0,
          "name": "string"
        }
      ],
      "status": "available"
    }
    """


  @consultar-mascota
  Scenario: Consultar una mascota existente por id
    # Crear mascota primero
    Given path 'pet'
    And request petBody
    When method post
    Then status 200

    # Consultar mascota creada
    Given path 'pet', randomId
    When method get
    Then status 200
    And match response.id == randomId
    And match response.name == 'balto'