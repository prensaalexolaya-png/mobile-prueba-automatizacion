*** Settings ***
Library    AppiumLibrary
Resource   capabilities.resource

*** Keywords ***
Abrir Aplicacion Mobile
    Open Application
    ...    ${APPIUM_SERVER}
    ...    platformName=Android
    ...    automationName=${ANDROID_AUTOMATION}
    ...    deviceName=${ANDROID_DEVICE}
    ...    app=${ANDROID_APP}

Cerrar Aplicacion
    Close Application