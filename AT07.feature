Feature: Editar tutoría
Como tutor
Quiero poder modificar los detalles de mis tutorías
Para mantenerlas actualizadas

Scenario: Actualizar información de tutoría exitosamente
    Given que estoy autenticado como tutor
    And estoy en mi lista de tutorías
    When selecciono "Editar" en una tutoría existente
    And modifico la descripción
    And actualizo el precio a "60"
    And hago clic en "Guardar cambios"
    Then debería ver un mensaje indicando que la tutoría ha sido actualizada
    And debería ver la información actualizada en la lista de tutorías

Scenario: Actualizar disponibilidad de tutoría
    Given que estoy autenticado como tutor
    And estoy editando una tutoría existente
    When añado un nuevo horario disponible para "Miércoles" de "15:00" a "17:00"
    And hago clic en "Guardar cambios"
    Then debería ver la nueva disponibilidad en los detalles de la tutoría