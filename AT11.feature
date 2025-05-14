Feature: Solicitar tutoría
Como estudiante
Quiero poder enviar una solicitud para una tutoría específica
Para recibir ayuda académica

Scenario: Solicitar tutoría exitosamente
    Given que estoy autenticado como estudiante
    And estoy viendo los detalles de una tutoría
    When selecciono una fecha y hora disponible
    And hago clic en "Solicitar tutoría"
    And confirmo los detalles de la solicitud
    Then debería ver un mensaje de confirmación
    And la solicitud debería aparecer en mi lista de tutorías solicitadas

Scenario: No hay horarios disponibles
    Given que estoy autenticado como estudiante
    And estoy viendo los detalles de una tutoría sin horarios disponibles
    Then el botón "Solicitar tutoría" debería estar deshabilitado
    And debería ver un mensaje indicando que no hay horarios disponibles