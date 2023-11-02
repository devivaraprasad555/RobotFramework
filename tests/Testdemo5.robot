*** Settings ***
Documentation   validating the login page
Library         SeleniumLibrary
Library         ../customresources/Shop.py
Library         Collections
Test Setup      open the browser with the url
Test Teardown   close the Browser
Resource        ../PO/Generic.robot
Resource        ../PO/LandingPage.robot
Resource        ../PO/ShopPage.robot
Resource        ../PO/checkoutpage.robot
Resource        ../PO/confirmationPage.robot

*** Variables ***
@{listofproducts}      Blackberry   Samsung Note 8
${country_name}         India

*** Test Cases ***
card titles checking in the shop page
    [Tags]      SMOKE
    #ShopPage.verify Card titles in the shop page
    ShopPage.select the Card    Samsung Note 8
    add Items To The Card Checkout  ${listofproducts}
    checkoutpage.Verify items in the Checkout Page and Proceed
    confirmationPage.Enter the country and select the terms   ${country_name}
    confirmationPage.purchase the final product and confirm


close the Browser
    Close Browser
