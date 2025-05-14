Feature: Visualizar calendario de tutorías
Como usuario
Quiero ver mis tutorías programadas en un formato de calendario
Para organizar mejor mi tiempo

Scenario: Estudiante visualiza su calendario de tutorías
    Given que estoy autenticado como estudiante
    When navego a la sección "Mi calendario"
    Then debería ver un calendario con mis tutorías programadas
    And cada tutoría debería mostrar el título y horario

Scenario: Tutor visualiza su calendario de tutorías
    Given que estoy autenticado como tutor
    When navego a la sección "Mi calendario"
    Then debería ver un calendario con todas las tutorías que imparto
    And debería poder distinguir entre tutorías confirmadas y pendientes

Scenario: Ver detalles de una tutoría desde el calendario
    Given que estoy viendo mi calendario de tutorías
    When hago clic en una tutoría programada
    Then debería ver un modal con los detalles completos de la tutoría