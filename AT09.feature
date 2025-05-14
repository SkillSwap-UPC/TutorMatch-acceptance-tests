Feature: Visualizar tutorías disponibles
Como estudiante
Quiero poder ver todas las tutorías disponibles
Para encontrar las que se ajusten a mis necesidades

Scenario: Ver listado de tutorías
    Given que estoy autenticado como estudiante
    When navego a la sección "Explorar tutorías"
    Then debería ver una lista de tutorías disponibles
    And cada tutoría debería mostrar título, nombre del tutor, precio y curso

Scenario: Filtrar tutorías por curso
    Given que estoy en la página de exploración de tutorías
    When selecciono filtrar por el curso "Cálculo I"
    Then debería ver solo tutorías relacionadas con "Cálculo I"
    
Scenario: Ordenar tutorías por precio
    Given que estoy en la página de exploración de tutorías
    When hago clic en "Ordenar por precio: Menor a mayor"
    Then las tutorías deberían mostrarse ordenadas de menor a mayor precio