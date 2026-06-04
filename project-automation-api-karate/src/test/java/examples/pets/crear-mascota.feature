@allTest
Feature: Creacion de Mascota - API Petstore con Karate

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

  @crear-mascota
  Scenario: Validar creacion de una mascota exitosamente
    Given path 'pet'
    And request petBody
    When method post
    Then status 200
    And match response.id == randomId
    And match response.name == 'balto'
    And match response.status == 'available'