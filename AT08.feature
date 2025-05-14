Feature: Eliminar tutoría
Como tutor
Quiero eliminar tutorías que ya no desee ofrecer
Para mantener mi catálogo actualizado

Scenario: Eliminar tutoría exitosamente
    Given que estoy autenticado como tutor
    And estoy en mi lista de tutorías
    When selecciono "Eliminar" en una tutoría existente
    And confirmo la eliminación
    Then debería ver un mensaje confirmando que la tutoría ha sido eliminada
    And la tutoría no debería aparecer en mi lista de tutorías

Scenario: Cancelar eliminación de tutoría
    Given que estoy autenticado como tutor
    And estoy en mi lista de tutorías
    When selecciono "Eliminar" en una tutoría existente
    And cancelo la eliminación
    Then la tutoría debería seguir apareciendo en mi lista