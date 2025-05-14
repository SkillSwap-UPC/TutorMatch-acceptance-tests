Feature: Registro de usuarios
  Como nuevo usuario
  Quiero poder registrarme en la plataforma proporcionando información básica
  Para crear una cuenta y acceder a los servicios de TutorMatch

  Scenario: Registro exitoso con correo institucional
    Given que estoy en la página de registro
    When ingreso un correo institucional válido "U20123456@upc.edu.pe"
    And ingreso una contraseña segura "Password123!"
    And ingreso mi nombre "Juan" y apellido "Pérez"
    And selecciono el rol "Estudiante"
    And hago clic en el botón "Registrarse"
    Then debería ver un mensaje de registro exitoso
    And debería ser redirigido a la página de completar perfil

  Scenario: Error al registrarse con correo no institucional
    Given que estoy en la página de registro
    When ingreso un correo no institucional "usuario@gmail.com"
    And completo el resto de campos correctamente
    And hago clic en el botón "Registrarse"
    Then debería ver un mensaje de error indicando "Debe usar un correo institucional UPC"

  Scenario: Error al registrarse con contraseña débil
    Given que estoy en la página de registro
    When ingreso un correo institucional válido "U20123456@upc.edu.pe"
    And ingreso una contraseña débil "123456"
    And completo el resto de campos correctamente
    And hago clic en el botón "Registrarse"
    Then debería ver un mensaje de error sobre requisitos de contraseña