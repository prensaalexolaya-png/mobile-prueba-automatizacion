*** Settings ***
Resource    ../resources/common_keywords.resource

*** Keywords ***

Validar Compra Exitosa iOS
    Wait Until Element Is Visible
    ...    accessibility_id=Checkout Complete