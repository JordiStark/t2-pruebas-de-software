Feature: Practice Form - demoqa.com

  Background:
    Given que abro la página del formulario de práctica

  @happyPath
  Scenario: Escenario 1 - Registro exitoso con campos obligatorios
    When ingreso el nombre "Marco" y el apellido " Benitez"
    And escribo el correo "Marco.Benitez@example.com"
    And selecciono el género "Male"
    And escribo el número de celular "9876543211"
    And selecciono el hobby "Sports"
    And escribo la dirección actual "Av. españa 345"
    And envío el formulario
    Then debería visualizar el modal de confirmación
    And el título del modal debería ser "Thanks for submitting the form"
    And el modal debería contener el nombre "Marco Benitez"

  Scenario: Escenario 2 - Registro con campos adicionales
    When ingreso el nombre "Malu" y el apellido "Zoreenda"
    And escribo el correo "Malu.Zoreenda@example.com"
    And selecciono el género "Female"
    And escribo el número de celular "9123456781"
    And selecciono el hobby "Reading"
    And escribo la dirección actual "Jr. Plazita 69"
    And envío el formulario
    Then debería visualizar el modal de confirmación
    And el título del modal debería ser "Thanks for submitting the form"
    And el modal debería contener el nombre "Malu Zoreenda"

  Scenario: Escenario 3 - Validación de formulario incompleto
    When ingreso el nombre "" y el apellido ""
    And dejo el correo vacío
    And no selecciono ningún género
    And escribo el número de celular ""
    And no selecciono ningún hobby
    And escribo la dirección actual ""
    And envío el formulario
    Then los campos obligatorios deberían mostrar mensajes de validación
