*** Settings ***
Documentation   validating the child window
Library         SeleniumLibrary
Library    String
Library    Collections
Library     DataDriver          file=resources/data.csv     encoding=utf_8      dialect=unix
Test Setup      open the browser with the url
Test Teardown   close the Browser
Test Template   validate unsucessfull login
Resource        ../PO/Generic.robot
Resource        ../PO/LandingPage.robot

*** Variables ***


*** Test Cases ***
Login with the user ${username} and password ${password}      xyz      1234


*** Keywords ***
validate unsucessfull login
    [Arguments]     ${username}     ${password}
    fill the new form   ${username}     ${password}




fill the new form
    [Arguments]     ${username}     ${password}
    Input Text    css:[type=text]   ${username}
    Input Password    css:[type=password]    ${password}

close the Browser
    Close Browser
