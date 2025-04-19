*** Settings ***
Resource    ../common/common.resource
Resource    ../pages/login.resource
Resource    ../pages/products.resource
Resource    ../pages/cart.resource
Resource    ../pages/checkout.resource
Resource    ../pages/checkout_overview.resource
Suite Setup       Open Apps
Suite Teardown    Close Apps

*** Tasks ***
Login
    [Tags]    login
    Login to Apps

Sort Price High to Low
    [Tags]    sort
    Sort Price High to Low

Add To Cart
    [Tags]    add_to_cart
    Add ProductsTo Cart

Checkout
    [Tags]    checkout
    Go to Cart Page
    Go to Checkout Information Page
    Go to Checkout Overview Page
    Finish Checkout
