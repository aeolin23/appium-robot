*** Settings ***
Library      AppiumLibrary
Variables    ../locators/login.py

*** Keywords ***
Login to Apps
    Wait Until Page Contains Element    ${username_field}    timeout=10
    Input Text    ${username_field}    standard_user
    Input Password    ${password_field}    secret_sauce
    Click Element    ${login_button}