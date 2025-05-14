Feature: Crear perfil
Como nuevo usuario
Quiero completar mi perfil con información personal y académica
Para que otros usuarios me conozcan mejor

Scenario: Completar perfil de estudiante exitosamente
    Given que estoy autenticado como un nuevo usuario
    And estoy en la página de "Completar perfil"
    When completo los campos obligatorios de información personal
    And subo una foto de perfil
    And selecciono mi semestre actual "2023-1"
    And hago clic en "Guardar perfil"
    Then debería ver un mensaje de confirmación
    And debería ser redirigido a mi dashboard

Scenario: Completar perfil de tutor exitosamente
    Given que estoy autenticado como un nuevo usuario con rol "Tutor"
    And estoy en la página de "Completar perfil"
    When completo los campos obligatorios de información personal
    And subo una foto de perfil
    And agrego mis áreas de especialización
    And escribo una descripción sobre mi experiencia
    And hago clic en "Guardar perfil"
    Then debería ver un mensaje de confirmación
    And debería ser redirigido a mi dashboard