@allTest
Feature: Eliminar Mascota - API Petstore con Karate

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

  @eliminar-mascota
  Scenario: Eliminar una mascota
    # Crear mascota primero
    Given path 'pet'
    And request petBody
    When method post
    Then status 200

    Given path 'pet', randomId
    When method delete
    Then status 200