Feature: Contactar soporte técnico
Como usuario
Quiero poder comunicarme con el soporte técnico
Para resolver problemas con la plataforma

Scenario: Enviar mensaje de soporte exitosamente
    Given que estoy autenticado en la plataforma
    When navego a la sección "Soporte"
    And selecciono la categoría "Problema técnico"
    And escribo un asunto "Error al reservar tutoría"
    And escribo una descripción detallada del problema
    And hago clic en "Enviar"
    Then debería ver un mensaje de confirmación
    And debería recibir un correo con el número de ticket

Scenario: Ver historial de tickets de soporte
    Given que estoy autenticado en la plataforma
    When navego a la sección "Mis tickets de soporte"
    Then debería ver una lista de todos mis tickets de soporte previos
    And debería poder ver el estado de cada ticket