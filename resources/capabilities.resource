*** Variables ***
${PLATFORM}                  Android
${APPIUM_SERVER}             http://127.0.0.1:4723

${ANDROID_APP}               ${EXECDIR}/apps/android/my-demo-app.apk
${IOS_APP}                   ${EXECDIR}/apps/ios/MyDemoApp.app

${ANDROID_AUTOMATION}        UiAutomator2
${IOS_AUTOMATION}            XCUITest

${ANDROID_DEVICE}            Android Emulator
${IOS_DEVICE}                iPhone14_iOS17_5
${IOS_UDID}                  CC317553-ECC9-449D-876D-F66658DDFA84
${IOS_PLATFORM_VERSION}      17.5


&{ANDROID_CAPABILITIES}
...    platformName=Android
...    automationName=${ANDROID_AUTOMATION}
...    deviceName=${ANDROID_DEVICE}
...    app=${ANDROID_APP}
...    noReset=true
...    fullReset=false
...    newCommandTimeout=300


&{IOS_CAPABILITIES}
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
...    shouldTerminateApp=false
...    forceAppLaunch=false