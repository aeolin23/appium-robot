*** Settings ***
Library      AppiumLibrary
Variables    ../locators/checkout.py

*** Keywords ***
Go to Checkout Overview Page
    Wait Until Page Contains Element    ${first_name_field}    timeout=10
    Input Text    ${first_name_field}    Aeolin
    Input Text    ${last_name_field}    Olin
    Input Text    ${zip_code_field}    12345
    Click Element    ${continue_button}