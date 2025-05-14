Feature: Añadir tutoría
Como tutor
Quiero crear nuevas tutorías especificando todos los detalles necesarios
Para ofrecerlas a los estudiantes

Scenario: Crear nueva tutoría exitosamente
    Given que estoy autenticado como tutor
    And estoy en mi dashboard
    When hago clic en "Crear nueva tutoría"
    And completo el título como "Introducción al Cálculo Diferencial"
    And agrego una descripción detallada
    And selecciono el curso "MAT101 - Cálculo I"
    And establezco el precio en "50"
    And establezco disponibilidad para "Lunes" de "14:00" a "16:00"
    And hago clic en "Publicar tutoría"
    Then debería ver un mensaje de confirmación
    And la nueva tutoría debería aparecer en mi lista de tutorías

Scenario: Validación de campos obligatorios
    Given que estoy autenticado como tutor
    And estoy en el formulario de creación de tutoría
    When dejo el campo título vacío
    And hago clic en "Publicar tutoría"
    Then debería ver un mensaje de error indicando que el título es obligatorio