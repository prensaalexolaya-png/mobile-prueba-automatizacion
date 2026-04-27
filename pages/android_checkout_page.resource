*** Settings ***
Resource    android_cart_page.resource


*** Keywords ***

Completar Checkout Android
    Ir A Checkout Android

    Ingresar Texto Checkout Android
    ...    accessibility_id=Full Name* input field
    ...    Alex QA

    Ingresar Texto Checkout Android
    ...    accessibility_id=Address Line 1* input field
    ...    Calle 123

    Ingresar Texto Checkout Android
    ...    accessibility_id=Address Line 2 input field
    ...    Apto 202

    Ingresar Texto Checkout Android
    ...    accessibility_id=City* input field
    ...    Bogota

    Ingresar Texto Checkout Android
    ...    accessibility_id=State/Region input field
    ...    Cundinamarca

    Ingresar Texto Checkout Android
    ...    accessibility_id=Zip Code* input field
    ...    110111

    Ingresar Texto Checkout Android
    ...    accessibility_id=Country* input field
    ...    Colombia

    Wait Until Element Is Visible
    ...    accessibility_id=To Payment button
    ...    10s

    Click Element
    ...    accessibility_id=To Payment button


Ingresar Texto Checkout Android
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