*** Keywords ***

Seleccionar Producto Backpack Android
    Wait Until Element Is Visible
    ...    xpath=//*[@text="Sauce Labs Backpack"]
    ...    10s

    Click Element
    ...    xpath=//*[@text="Sauce Labs Backpack"]

    Wait Until Element Is Visible
    ...    accessibility_id=Add To Cart button
    ...    10s

    Click Element
    ...    accessibility_id=Add To Cart button


Ir Al Carrito Android
    Wait Until Element Is Visible
    ...    xpath=//*[@content-desc="cart badge"]
    ...    10s

    Click Element
    ...    xpath=//*[@content-desc="cart badge"]