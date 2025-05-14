Feature: Ver detalles de tutoría
Como estudiante
Quiero ver la información completa de una tutoría
Para decidir si es adecuada para mí

Scenario: Ver detalles completos de una tutoría
    Given que estoy autenticado como estudiante
    And estoy en la página de exploración de tutorías
    When hago clic en el título de una tutoría
    Then debería ver una página con todos los detalles de la tutoría
    And debería ver la información del tutor
    And debería ver la disponibilidad horaria
    And debería ver reseñas de otros estudiantes si existen

Scenario: Ver perfil del tutor desde detalles de tutoría
    Given que estoy viendo los detalles de una tutoría
    When hago clic en el nombre del tutor
    Then debería ser redirigido al perfil completo del tutor