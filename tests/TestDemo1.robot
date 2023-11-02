*** Settings ***
Documentation   validating the login page
Library         SeleniumLibrary
Test Setup       open the browser with the url
Test Teardown   close the Browser
#Resource        resource.robot

*** Variables ***

*** Test Cases ***
validate Unsucessfull Login
    Fill the login Form     ${email}        ${password}
    wait until to check the error message
    check the message correct or not



*** Keywords ***


Fill the login Form
    [arguments]     ${email}         ${password}
    Input Text      css:input[type=text]   ${email}
    Input Password  css:input[type=password]  ${password}
    Click Button    css:*[type=submit]

wait until to check the error message
    Wait Until Element Is Visible       ${message_checking}

check the message correct or not
    ${result}=  Get Text    ${message_checking}
    Should Be Equal As Strings    ${result}    We'll send you a code to your mobile number
    Element Text Should Be    ${message_checking}   We'll send you a code to your mobile number

close the Browser
    Close Browser
