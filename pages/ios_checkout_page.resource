*** Settings ***
Resource    ../resources/common_keywords.resource
Library     Process


*** Keywords ***
Completar Checkout iOS
    Ir A Checkout iOS

    Ingresar Texto iOS
    ...    xpath=//XCUIElementTypeTextField[@value="Rebecca Winter"]
    ...    Alex QA

    Ingresar Texto iOS
    ...    xpath=//XCUIElementTypeTextField[@value="Mandorley 112"]
    ...    Carrera 2

    Ingresar Texto iOS
    ...    xpath=//XCUIElementTypeTextField[@value="Truro"]
    ...    Bogota

    Ingresar Texto iOS
    ...    xpath=//XCUIElementTypeTextField[@value="Cornwall"]
    ...    Cundinamarca

    Ingresar Texto iOS
    ...    xpath=//XCUIElementTypeTextField[@value="89750"]
    ...    111111

    Ingresar Texto iOS
    ...    xpath=//XCUIElementTypeTextField[@value="United Kingdom"]
    ...    Colombia

    Ocultar Teclado Simulator iOS

    Wait Until Element Is Visible
    ...    xpath=//XCUIElementTypeButton[@name="To Payment"]
    ...    20s

    Click Element
    ...    xpath=//XCUIElementTypeButton[@name="To Payment"]

    Sleep    2s


Ir A Checkout iOS
    Wait Until Element Is Visible
    ...    accessibility_id=ProceedToCheckout
    ...    20s

    Click Element
    ...    accessibility_id=ProceedToCheckout

    Sleep    2s


Ingresar Texto iOS
    [Arguments]    ${locator}    ${texto}

    Wait Until Element Is Visible
    ...    ${locator}
    ...    20s

    Click Element
    ...    ${locator}

    Sleep    0.5s

    Clear Text
    ...    ${locator}

    Sleep    0.5s

    Input Text
    ...    ${locator}
    ...    ${texto}

    Sleep    0.5s


Ocultar Teclado Simulator iOS
    Run Process
    ...    osascript
    ...    -e
    ...    tell application "Simulator" to activate

    Sleep    0.5s

    Run Process
    ...    osascript
    ...    -e
    ...    tell application "System Events" to keystroke "k" using command down

    Sleep    1s