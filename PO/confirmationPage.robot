*** Settings ***
Documentation  All the page objects and keywords of landing page
Library         SeleniumLibrary

*** Variables ***
${country_location}     //a[text()='India']

*** Keywords ***

Enter the country and select the terms
    [arguments]     ${country_name}
    Input Text    country   ${country_name}
    wait until element passed is located on page    //a[text()='${country_name}']
    Click Element    //a[text()='${country_name}']
    Sleep    2
    Click Element    css:.checkbox label
    
purchase the final product and confirm
    Click Button    css:.btn-success
    Page Should Contain    Success!
