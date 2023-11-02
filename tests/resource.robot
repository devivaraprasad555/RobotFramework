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

*** Keywords ***
open the browser with the url
    Create Webdriver    Firefox
    Go To               ${url}


close the Browser
    Close Browser