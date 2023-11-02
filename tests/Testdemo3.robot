*** Settings ***
Documentation   validating the child window
Library         SeleniumLibrary
Library    String
Library    Collections
Test Teardown   close the Browser
Resource        ../PO/Generic.robot
Resource        ../PO/LandingPage.robot

*** Variables ***
${message}          css:h1
*** Test Cases ***
validate the child window functionality
    open the browser with the url
    select the link of the child window
    verify to use the switchiwindow
    grab the email
    enter the email in another text

*** Keywords ***
select the link of the child window
    Click Element    css:a[class="blinkingText"]
    
verify to use the switchiwindow
    #Switch Window       NEW
    Element Text Should Be    ${message}     DOCUMENTS REQUEST

grab the email
    ${text}=  Get Text     css:.red
    @{words}=       Split String    ${text}     at
    ${text_split}=      Get From List   ${words}      1
    log     ${text_split}
    @{words_2}=     Split String      ${text_split}
    ${email}=       Get From List   ${words_2}      0
    Set Global Variable      ${email}

enter the email in another text
    Switch Window       MAIN
    #Title Should Be     RS Academy
    Input Text          xpath://input[@id='name']   ${email}





close the Browser
    Close Browser
