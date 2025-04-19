*** Settings ***
Library    AppiumLibrary

*** Variables ***
${ANDROID_AUTOMATION_NAME}    uiautomator2
${ANDROID_APP_PACKAGE}        com.swaglabsmobileapp
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_APP_ACTIVITY}       com.swaglabsmobileapp.MainActivity
${ANDROID_UDID}               emulator-5554
${REMOTE_URL}                 http://127.0.0.1:4723

*** Keywords ***
Open Apps
    Open Application    ${REMOTE_URL}
    ...    automationName=${ANDROID_AUTOMATION_NAME}
    ...    platformName=${ANDROID_PLATFORM_NAME}
    ...    appPackage=${ANDROID_APP_PACKAGE}
    ...    appActivity=${ANDROID_APP_ACTIVITY}
    ...    udid=${ANDROID_UDID}
    Set Appium Timeout    10

Swipe Up
    Swipe    500    1000    400    400    1000

Close Apps
    Close Application