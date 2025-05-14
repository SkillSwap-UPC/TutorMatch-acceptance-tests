Feature: Aceptar términos y condiciones
Como nuevo usuario
Quiero poder leer y aceptar los términos y condiciones
Para utilizar la plataforma de manera legal

Scenario: Aceptar términos durante el registro
    Given que estoy en el proceso de registro
    When llego al paso de términos y condiciones
    And leo los términos y condiciones
    And marco la casilla "Acepto los términos y condiciones"
    And hago clic en "Continuar"
    Then debería poder completar mi registro

Scenario: No aceptar términos y condiciones
    Given que estoy en el proceso de registro
    When llego al paso de términos y condiciones
    And no marco la casilla "Acepto los términos y condiciones"
    And hago clic en "Continuar"
    Then debería ver un mensaje indicando que debo aceptar los términos
    And no debería poder avanzar al siguiente paso