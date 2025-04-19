*** Settings ***
Resource    ../pages/common.resource
Resource    ../pages/login.resource
Resource    ../pages/products.resource
Resource    ../pages/cart.resource
Resource    ../pages/checkout.resource
Resource    ../pages/checkout_overview.resource
Test Setup       Open Swaglabs
Test Teardown    Close Apps

*** Tasks ***
Running E2E Test
    Login to Apps
    Sort Price High to Low
    Add To Cart
    Go to Cart Page
    Go to Checkout Information Page
    Go to Checkout Overview Page
    Finish Checkout