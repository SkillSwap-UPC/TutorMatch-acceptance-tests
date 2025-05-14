Feature: Seleccionar rol de usuario
Como nuevo usuario
Quiero poder elegir mi rol (estudiante o tutor)
Para acceder a las funcionalidades correspondientes

Scenario: Seleccionar rol durante el registro
    Given que estoy en la página de registro
    When completo la información básica requerida
    And selecciono la opción "Estudiante"
    And completo el registro
    Then debería ser registrado como estudiante
    And debería ver opciones específicas para estudiantes en mi dashboard

Scenario: Seleccionar rol de tutor durante el registro
    Given que estoy en la página de registro
    When completo la información básica requerida
    And selecciono la opción "Tutor"
    And completo el registro
    Then debería ser registrado como tutor
    And debería ver opciones para gestionar tutorías en mi dashboard