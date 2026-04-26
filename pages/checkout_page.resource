*** Keywords ***
And completa el Checkout con datos ficticios
    Abrir checkout desde carrito

    Wait Until Element Is Visible    accessibility_id=Full Name* input field    10s
    Click Element    accessibility_id=Full Name* input field
    Input Text    accessibility_id=Full Name* input field    Alex QA
    Hide Keyboard

    Wait Until Element Is Visible    accessibility_id=Address Line 1* input field    10s
    Click Element    accessibility_id=Address Line 1* input field
    Input Text    accessibility_id=Address Line 1* input field    Calle 123
    Hide Keyboard

    Wait Until Element Is Visible    accessibility_id=Address Line 2 input field    10s
    Click Element    accessibility_id=Address Line 2 input field
    Input Text    accessibility_id=Address Line 2 input field    Apto 202
    Hide Keyboard

    Wait Until Element Is Visible    accessibility_id=City* input field    10s
    Click Element    accessibility_id=City* input field
    Input Text    accessibility_id=City* input field    Bogota
    Hide Keyboard

    Wait Until Element Is Visible    accessibility_id=State/Region input field    10s
    Click Element    accessibility_id=State/Region input field
    Input Text    accessibility_id=State/Region input field    Cundinamarca
    Hide Keyboard

    Wait Until Element Is Visible    accessibility_id=Zip Code* input field    10s
    Click Element    accessibility_id=Zip Code* input field
    Input Text    accessibility_id=Zip Code* input field    110111
    Hide Keyboard

    Wait Until Element Is Visible    accessibility_id=Country* input field    10s
    Click Element    accessibility_id=Country* input field
    Input Text    accessibility_id=Country* input field    Colombia
    Hide Keyboard

    Wait Until Element Is Visible    accessibility_id=To Payment button    10s
    Click Element    accessibility_id=To Payment button