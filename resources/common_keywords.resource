*** Settings ***
Library    AppiumLibrary
Resource   capabilities.resource
Library    Process


*** Keywords ***
Abrir Aplicacion Mobile
    IF    '${PLATFORM}' == 'Android'
        Abrir Aplicacion Android
    ELSE IF    '${PLATFORM}' == 'iOS'
        Abrir Aplicacion iOS
    END


Abrir Aplicacion Android
    Open Application
    ...    ${APPIUM_SERVER}
    ...    platformName=Android
    ...    automationName=${ANDROID_AUTOMATION}
    ...    deviceName=${ANDROID_DEVICE}
    ...    app=${ANDROID_APP}
    ...    noReset=true
    ...    fullReset=false
    ...    newCommandTimeout=300


Abrir Aplicacion iOS
    Open Application
    ...    ${APPIUM_SERVER}
    ...    platformName=iOS
    ...    automationName=${IOS_AUTOMATION}
    ...    deviceName=${IOS_DEVICE}
    ...    udid=${IOS_UDID}
    ...    platformVersion=${IOS_PLATFORM_VERSION}
    ...    app=${IOS_APP}
    ...    noReset=true
    ...    fullReset=false
    ...    enforceAppInstall=false
    ...    useNewWDA=false
    ...    connectHardwareKeyboard=true
    ...    forceSimulatorSoftwareKeyboardPresence=false
    ...    autoAcceptAlerts=true
    ...    newCommandTimeout=300
    ...    wdaLaunchTimeout=240000
    ...    wdaConnectionTimeout=240000


Cerrar Aplicacion
    Close Application