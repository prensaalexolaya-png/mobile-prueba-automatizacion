*** Keywords ***

Completar Pago Android
    Ingresar Texto Pago Android
    ...    accessibility_id=Full Name* input field
    ...    Alex QA

    Ingresar Texto Pago Android
    ...    accessibility_id=Card Number* input field
    ...    4111111111111111

    Ingresar Texto Pago Android
    ...    accessibility_id=Expiration Date* input field
    ...    12/30

    Ingresar Texto Pago Android
    ...    accessibility_id=Security Code* input field
    ...    123

    Wait Until Element Is Visible
    ...    xpath=//*[@text="Review Order"]
    ...    15s

    Click Element
    ...    xpath=//*[@text="Review Order"]


Confirmar Orden Android
    Wait Until Element Is Visible
    ...    xpath=//*[@text="Place Order"]
    ...    20s

    Click Element
    ...    xpath=//*[@text="Place Order"]


Ingresar Texto Pago Android
    [Arguments]    ${locator}    ${texto}

    Wait Until Element Is Visible
    ...    ${locator}
    ...    10s

    Click Element
    ...    ${locator}

    Input Text
    ...    ${locator}
    ...    ${texto}

    Hide Keyboard