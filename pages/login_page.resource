*** Keywords ***
Given que el usuario abre la aplicacion y se encuentra en Login
    Wait Until Element Is Visible    accessibility_id=open menu    10s
    Click Element    accessibility_id=open menu
    Wait Until Element Is Visible    xpath=//*[@text="Log In" or @content-desc="Log In"]    10s
    Click Element    xpath=//*[@text="Log In" or @content-desc="Log In"]

When el usuario ingresa credenciales validas
    Wait Until Element Is Visible    accessibility_id=Username input field    10s
    Click Element    accessibility_id=Username input field
    Input Text    accessibility_id=Username input field    bob@example.com

    Wait Until Element Is Visible    accessibility_id=Password input field    10s
    Click Element    accessibility_id=Password input field
    Input Text    accessibility_id=Password input field    10203040

    Click Element    accessibility_id=Login button