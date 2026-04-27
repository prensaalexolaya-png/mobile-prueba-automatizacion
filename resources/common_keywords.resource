*** Settings ***
Library    AppiumLibrary
Library    Process
Resource   capabilities.resource


*** Keywords ***
Abrir Aplicacion Mobile
    IF    '${PLATFORM}' == 'Android'
        Abrir Aplicacion Android
    ELSE IF    '${PLATFORM}' == 'iOS'
        Abrir Aplicacion iOS
    ELSE
        Fail    Plataforma no soportada: ${PLATFORM}
    END


Abrir Aplicacion Android
    Open Application
    ...    ${APPIUM_SERVER}
    ...    &{ANDROID_CAPABILITIES}


Abrir Aplicacion iOS
    Open Application
    ...    ${APPIUM_SERVER}
    ...    &{IOS_CAPABILITIES}


Cerrar Aplicacion
    Close Application