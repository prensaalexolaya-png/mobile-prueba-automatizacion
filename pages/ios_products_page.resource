*** Settings ***
Resource    ../resources/common_keywords.resource

*** Keywords ***

Seleccionar Producto Backpack iOS
    Wait Until Element Is Visible
    ...    xpath=//XCUIElementTypeStaticText[contains(@label,"Sauce Labs Backpack")]

    Click Element
    ...    xpath=//XCUIElementTypeStaticText[contains(@label,"Sauce Labs Backpack")]

    Wait Until Element Is Visible
    ...    accessibility_id=AddToCart

    Click Element
    ...    accessibility_id=AddToCart

Ir Al Carrito iOS
    Click Element
    ...    accessibility_id=Cart-tab-item