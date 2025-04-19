*** Settings ***
Library      AppiumLibrary
Variables    locator.py

*** Variables ***
${ANDROID_AUTOMATION_NAME}    uiautomator2
${ANDROID_APP_PACKAGE}        com.swaglabsmobileapp
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_APP_ACTIVITY}       com.swaglabsmobileapp.MainActivity
${ANDROID_UDID}               emulator-5554
${REMOTE_URL}                 http://127.0.0.1:4723

*** Tasks ***
Open Apps and Login
    Open Swaglabs
    Login to Apps

Sort Price High to Low
    Sort Price High to Low

Add To Cart
    Add To Cart

Checkout
    Go to Cart Page
    Go to Checkout Information Page
    Go to Checkout Overview Page
    Finish Checkout

*** Keywords ***
Open Swaglabs
    Open Application    ${REMOTE_URL}
    ...    automationName=${ANDROID_AUTOMATION_NAME}
    ...    platformName=${ANDROID_PLATFORM_NAME}
    ...    appPackage=${ANDROID_APP_PACKAGE}
    ...    appActivity=${ANDROID_APP_ACTIVITY}
    ...    udid=${ANDROID_UDID}
    Set Appium Timeout    10

Login to Apps
    Wait Until Page Contains Element    ${username_field}    timeout=10
    Input Text    ${username_field}    standard_user
    Input Password    ${password_field}    secret_sauce
    Click Element    ${login_button}

Sort Price High to Low
    Wait Until Page Contains Element    ${filter_button}    timeout=10
    Click Element    ${filter_button}
    Wait Until Page Contains Element    ${price_high_to_low}    timeout=10
    Click Element    ${price_high_to_low}

Add To Cart
    Wait Until Page Contains Element    ${sauce_labs_fleece}    timeout=10
    Click Element    ${sauce_labs_fleece}

Go to Cart Page
    Click Element    ${cart}

Go to Checkout Information Page
    Wait Until Page Contains Element    ${checkout_button}    timeout=10
    Click Element    ${checkout_button}

Go to Checkout Overview Page
    Wait Until Page Contains Element    ${first_name_field}    timeout=10
    Input Text    ${first_name_field}    Aeolin
    Input Text    ${last_name_field}    Olin
    Input Text    ${zip_code_field}    12345
    Click Element    ${continue_button}

Finish Checkout
    Wait Until Element Is Visible    ${checkout_overview}    timeout=10
    Swipe Up
    Wait Until Page Contains Element    ${finish_button}    timeout=10
    Click Element    ${finish_button}

Swipe Up
    Swipe    500    1000    400    400    1000