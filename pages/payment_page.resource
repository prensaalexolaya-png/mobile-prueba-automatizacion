*** Keywords ***
And completa el pago con datos ficticios
    Wait Until Element Is Visible    accessibility_id=Full Name* input field    10s
    Click Element    accessibility_id=Full Name* input field
    Input Text    accessibility_id=Full Name* input field    Alex QA
    Hide Keyboard

    Wait Until Element Is Visible    accessibility_id=Card Number* input field    10s
    Click Element    accessibility_id=Card Number* input field
    Input Text    accessibility_id=Card Number* input field    4111111111111111
    Hide Keyboard

    Wait Until Element Is Visible    accessibility_id=Expiration Date* input field    10s
    Click Element    accessibility_id=Expiration Date* input field
    Input Text    accessibility_id=Expiration Date* input field    12/30
    Hide Keyboard

    Wait Until Element Is Visible    accessibility_id=Security Code* input field    10s
    Click Element    accessibility_id=Security Code* input field
    Input Text    accessibility_id=Security Code* input field    123
    Hide Keyboard

    Wait Until Page Contains    Review Order    15s
    Click Element    xpath=//*[@text="Review Order"]

    Wait Until Page Contains    Place Order    20s
    Click Element    xpath=//*[@text="Place Order"]