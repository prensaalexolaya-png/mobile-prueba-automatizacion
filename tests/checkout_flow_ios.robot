# tests/checkout_flow_ios.robot

*** Settings ***
Resource    ../pages/ios_login_page.resource
Resource    ../pages/ios_products_page.resource
Resource    ../pages/ios_checkout_page.resource
Resource    ../pages/ios_payment_page.resource
Resource    ../pages/ios_confirmation_page.resource
Resource    ../resources/common_keywords.resource

Suite Setup       Abrir Aplicacion Mobile
# Suite Teardown    Cerrar Aplicacion

*** Test Cases ***

Compra Exitosa Sauce Labs Backpack iOS
    Abrir Login iOS
    Iniciar Sesion iOS
    Seleccionar Producto Backpack iOS
    Ir Al Carrito iOS
    Completar Checkout iOS
    Completar Pago iOS
    Confirmar Orden iOS
    Validar Compra Exitosa iOS