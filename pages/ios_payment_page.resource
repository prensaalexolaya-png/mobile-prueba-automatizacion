*** Settings ***
Resource    ../resources/common_keywords.resource
Library     Process


*** Keywords ***

Completar Pago iOS
    Wait Until Element Is Visible
    ...    xpath=//XCUIElementTypeTextField[@value="Maxim Winter"]
    ...    20s

    Clear Text
    ...    xpath=//XCUIElementTypeTextField[@value="Maxim Winter"]

    Input Text
    ...    xpath=//XCUIElementTypeTextField[@value="Maxim Winter"]
    ...    Alex QA

    Clear Text
    ...    xpath=//XCUIElementTypeTextField[@value="3258 1265 7568 7896"]

    Input Text
    ...    xpath=//XCUIElementTypeTextField[@value="3258 1265 7568 7896"]
    ...    4111111111111111

    Clear Text
    ...    xpath=//XCUIElementTypeTextField[@value="03/25"]

    Input Text
    ...    xpath=//XCUIElementTypeTextField[@value="03/25"]
    ...    12/30

    Clear Text
    ...    xpath=//XCUIElementTypeTextField[@value="123"]

    Input Text
    ...    xpath=//XCUIElementTypeTextField[@value="123"]
    ...    456

    Ocultar Teclado Simulator iOS

    Wait Until Element Is Visible
    ...    xpath=//XCUIElementTypeButton[@name="Review Order"]
    ...    20s

    Click Element
    ...    xpath=//XCUIElementTypeButton[@name="Review Order"]


Confirmar Orden iOS
    Wait Until Element Is Visible
    ...    xpath=//XCUIElementTypeButton[@name="Place Order"]
    ...    20s

    Click Element
    ...    xpath=//XCUIElementTypeButton[@name="Place Order"]


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