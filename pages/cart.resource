*** Settings ***
Library      AppiumLibrary
Variables    ../locators/cart.py

*** Keywords ***
Go to Checkout Information Page
    Wait Until Page Contains Element    ${checkout_button}    timeout=10
    Click Element    ${checkout_button}