*** Settings ***
Resource    ../resources/common_keywords.resource
Resource    ../pages/android_login_page.resource
Resource    ../pages/android_products_page.resource
Resource    ../pages/android_cart_page.resource
Resource    ../pages/android_checkout_page.resource
Resource    ../pages/android_payment_page.resource
Resource    ../pages/android_confirmation_page.resource

Suite Setup       Abrir Aplicacion Mobile
Suite Teardown    Cerrar Aplicacion


*** Test Cases ***
Compra Exitosa Sauce Labs Backpack Android
    Given que el usuario abre la aplicacion y se encuentra en Login Android
    When el usuario ingresa credenciales validas Android
    And selecciona el producto Sauce Labs Backpack para añadirlo al carrito Android
    And completa el Checkout con datos ficticios Android
    And completa el pago con datos ficticios Android
    Then el sistema muestra confirmacion de compra exitosa Android


*** Keywords ***

Given que el usuario abre la aplicacion y se encuentra en Login Android
    Abrir Login Android


When el usuario ingresa credenciales validas Android
    Iniciar Sesion Android


And selecciona el producto Sauce Labs Backpack para añadirlo al carrito Android
    Seleccionar Producto Backpack Android
    Ir Al Carrito Android


And completa el Checkout con datos ficticios Android
    Completar Checkout Android


And completa el pago con datos ficticios Android
    Completar Pago Android


Then el sistema muestra confirmacion de compra exitosa Android
    Confirmar Orden Android
    Validar Compra Exitosa Android