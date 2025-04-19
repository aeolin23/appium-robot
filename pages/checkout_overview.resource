*** Settings ***
Library      AppiumLibrary
Variables    ../locators/checkout_overview.py
Resource     ../common/common.resource

*** Keywords ***
Finish Checkout
    Wait Until Element Is Visible    ${checkout_overview}    timeout=10
    Swipe Up
    Wait Until Page Contains Element    ${finish_button}    timeout=10
    Click Element    ${finish_button}