*** Settings ***
Documentation  The resource file with  keywords and variables
...             we can include all the resuable in this resource file
...
Library         SeleniumLibrary

*** Variables ***
${url}      https://rahulshettyacademy.com/angularpractice/shop
#${url}          https://rahulshettyacademy.com/AutomationPractice/
#${url}            https://www.facebook.com/
${email}        vinaysiri
${password}     devivaraprasad000
${browser_name}     Firefox

*** Keywords ***
open the browser with the url
    Create Webdriver    ${browser_name}
    Go To               ${url}

wait until element passed is located on page
    [Arguments]         ${page_locator}
    Wait Until Element Is Visible    ${page_locator}

close the Browser
    Close Browser