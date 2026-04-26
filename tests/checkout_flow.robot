*** Settings ***
Resource    ../pages/login_page.resource
Resource    ../pages/products_page.resource
Resource    ../pages/cart_page.resource
Resource    ../pages/checkout_page.resource
Resource    ../pages/payment_page.resource
Resource    ../pages/confirmation_page.resource
Resource    ../resources/common_keywords.resource

Suite Setup       Abrir Aplicacion Mobile
Suite Teardown    Cerrar Aplicacion

*** Test Cases ***
Compra Exitosa Sauce Labs Backpack
    Given que el usuario abre la aplicacion y se encuentra en Login
    When el usuario ingresa credenciales validas
    And selecciona el producto Sauce Labs Backpack para añadirlo al carrito
    And completa el Checkout con datos ficticios
    And completa el pago con datos ficticios
    Then el sistema muestra confirmacion de compra exitosa