*** Variables ***
${PLATFORM}              Android
${APPIUM_SERVER}         http://127.0.0.1:4723

${ANDROID_APP}           ${EXECDIR}/apps/android/my-demo-app.apk
${IOS_APP}               ${EXECDIR}/apps/ios/MyDemoApp.app

${ANDROID_AUTOMATION}    UiAutomator2
${IOS_AUTOMATION}        XCUITest

${ANDROID_DEVICE}        Android Emulator
${IOS_DEVICE}            iPhone Simulator