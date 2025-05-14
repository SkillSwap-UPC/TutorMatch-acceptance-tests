Feature: Editar perfil
Como usuario
Quiero poder modificar la información de mi perfil
Para mantenerlo actualizado cuando sea necesario

Scenario: Actualizar información personal exitosamente
    Given que estoy autenticado en la plataforma
    And estoy en la página de mi perfil
    When hago clic en "Editar perfil"
    And modifico mi número de teléfono a "987654321"
    And hago clic en "Guardar cambios"
    Then debería ver un mensaje indicando "Perfil actualizado exitosamente"
    And debería ver la información actualizada en mi perfil

Scenario: Cambiar foto de perfil
    Given que estoy autenticado en la plataforma
    And estoy en la página de mi perfil
    When hago clic en "Cambiar foto"
    And selecciono una nueva imagen de mi dispositivo
    And confirmo la selección
    Then debería ver mi nueva foto de perfil