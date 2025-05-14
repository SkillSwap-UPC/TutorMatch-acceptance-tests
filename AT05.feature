Feature: Eliminar cuenta
Como usuario
Quiero poder eliminar mi cuenta
Para proteger mi privacidad cuando ya no desee utilizar la plataforma

Scenario: Eliminar cuenta exitosamente
    Given que estoy autenticado en la plataforma
    And estoy en la configuración de mi cuenta
    When hago clic en "Eliminar cuenta"
    And confirmo mi contraseña "Password123!"
    And hago clic en "Confirmar eliminación"
    Then debería ver un mensaje indicando que mi cuenta ha sido eliminada
    And debería ser redirigido a la página de inicio
    And no debería poder iniciar sesión con mis credenciales anteriores

Scenario: Cancelar eliminación de cuenta
    Given que estoy autenticado en la plataforma
    And estoy en la configuración de mi cuenta
    When hago clic en "Eliminar cuenta"
    And hago clic en "Cancelar"
    Then debería permanecer en la configuración de mi cuenta
    And mi cuenta debería seguir activa