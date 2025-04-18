*** Settings ***
Library      AppiumLibrary
Variables    ../locators/products.py

*** Keywords ***
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