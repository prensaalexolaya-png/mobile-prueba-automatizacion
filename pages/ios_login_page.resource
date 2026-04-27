*** Settings ***
Resource    ../resources/common_keywords.resource


*** Keywords ***
Abrir Login iOS
    ${checkout_complete}=    Run Keyword And Return Status
    ...    Wait Until Page Contains    Checkout Complete    3s

    IF    ${checkout_complete}
        ${continue_visible}=    Run Keyword And Return Status
        ...    Wait Until Element Is Visible
        ...    xpath=//XCUIElementTypeButton[@name="Continue Shopping"]
        ...    5s

        IF    ${continue_visible}
            Click Element    xpath=//XCUIElementTypeButton[@name="Continue Shopping"]
        END
    END

    ${login_visible}=    Run Keyword And Return Status
    ...    Wait Until Page Contains    Login    5s

    IF    not ${login_visible}
        Wait Until Element Is Visible
        ...    xpath=//XCUIElementTypeButton[@name="More-tab-item"]
        ...    10s

        Click Element
        ...    xpath=//XCUIElementTypeButton[@name="More-tab-item"]

        Wait Until Element Is Visible
        ...    xpath=//XCUIElementTypeButton[@name="LogOut-menu-item"]
        ...    10s

        Click Element
        ...    xpath=//XCUIElementTypeButton[@name="LogOut-menu-item"]
    END

    Wait Until Page Contains    Login    10s


Iniciar Sesion iOS
    Wait Until Element Is Visible
    ...    xpath=//XCUIElementTypeStaticText[@name="bob@example.com"]
    ...    20s

    Click Element
    ...    xpath=//XCUIElementTypeStaticText[@name="bob@example.com"]

    Sleep    1s

    Wait Until Element Is Visible
    ...    xpath=//XCUIElementTypeStaticText[@name="10203040"]
    ...    20s

    Click Element
    ...    xpath=//XCUIElementTypeStaticText[@name="10203040"]

    Sleep    1s

    Wait Until Element Is Visible
    ...    xpath=//XCUIElementTypeButton[@name="Login"]
    ...    20s

    Click Element
    ...    xpath=//XCUIElementTypeButton[@name="Login"]

    Sleep    3s