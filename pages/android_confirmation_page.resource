*** Keywords ***

Validar Compra Exitosa Android
    Wait Until Element Is Visible
    ...    xpath=//*[@text="Checkout Complete"]
    ...    15s

    Page Should Contain Text
    ...    Checkout Complete

    Page Should Contain Text
    ...    Your new swag is on its way