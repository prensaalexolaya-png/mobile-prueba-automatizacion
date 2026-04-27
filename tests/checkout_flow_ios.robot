*** Settings ***
Resource    ../pages/ios_login_page.resource
Resource    ../pages/ios_products_page.resource
Resource    ../pages/ios_checkout_page.resource
Resource    ../pages/ios_payment_page.resource
Resource    ../pages/ios_confirmation_page.resource
Resource    ../resources/common_keywords.resource

Suite Setup       Abrir Aplicacion Mobile
Suite Teardown    Cerrar Aplicacion


*** Test Cases ***
Compra Exitosa Sauce Labs Backpack iOS
    Given que el usuario abre la aplicacion y se encuentra en Login iOS
    When el usuario ingresa credenciales validas iOS
    And selecciona el producto Sauce Labs Backpack para añadirlo al carrito iOS
    And completa el Checkout con datos ficticios iOS
    And completa el pago con datos ficticios iOS
    Then el sistema muestra confirmacion de compra exitosa iOS


*** Keywords ***

Given que el usuario abre la aplicacion y se encuentra en Login iOS
    Abrir Login iOS


When el usuario ingresa credenciales validas iOS
    Iniciar Sesion iOS


And selecciona el producto Sauce Labs Backpack para añadirlo al carrito iOS
    Seleccionar Producto Backpack iOS
    Ir Al Carrito iOS


And completa el Checkout con datos ficticios iOS
    Completar Checkout iOS


And completa el pago con datos ficticios iOS
    Completar Pago iOS


Then el sistema muestra confirmacion de compra exitosa iOS
    Confirmar Orden iOS
    Validar Compra Exitosa iOS