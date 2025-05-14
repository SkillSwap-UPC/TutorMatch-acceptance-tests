Feature: Login de usuarios
Como usuario registrado
Quiero poder iniciar sesión con mis credenciales
Para acceder a mi cuenta y utilizar la plataforma

Scenario: Inicio de sesión exitoso
    Given que estoy en la página de inicio de sesión
    When ingreso mi correo electrónico "U20123456@upc.edu.pe"
    And ingreso mi contraseña correcta "Password123!"
    And hago clic en el botón "Iniciar sesión"
    Then debería ser redirigido al dashboard
    And debería ver mi nombre de usuario en la barra de navegación

Scenario: Error de inicio de sesión con credenciales incorrectas
    Given que estoy en la página de inicio de sesión
    When ingreso mi correo electrónico "U20123456@upc.edu.pe"
    And ingreso una contraseña incorrecta "ContraseñaIncorrecta"
    And hago clic en el botón "Iniciar sesión"
    Then debería ver un mensaje de error indicando "Credenciales inválidas"

Scenario: Recuperación de contraseña
    Given que estoy en la página de inicio de sesión
    When hago clic en el enlace "¿Olvidaste tu contraseña?"
    And ingreso mi correo electrónico "U20123456@upc.edu.pe"
    And hago clic en el botón "Enviar enlace de recuperación"
    Then debería ver un mensaje confirmando que se ha enviado el enlace de recuperación