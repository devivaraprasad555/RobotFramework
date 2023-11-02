#*** Settings ***
#Documentation   validating the login page
#Library         SeleniumLibrary
#Library    Collections
#Test Setup       open the browser with the url
#Test Teardown   close the Browser
#Resource        resource.robot
#
#*** Variables ***
#
#*** Test Cases ***
#card titles checking in the shop page
#    verify Card titles in the shop page
#    select the Card     Blackberry      Samsung Note 8
#
##select the drop downs
##    navigate the drop downs
##    add the name to the input box
#
#
#
#
#
#*** Keywords ***
#verify Card titles in the shop page
#    @{expectedList}=    Create List     iphone X   Samsung Note 8  Nokia Edge  Blackberry
#    ${elements}=    Get WebElements      css:.card-title
#    @{actual_list}=     Create List
#
#    FOR    ${element}    IN    @{elements}
#        Log    ${element.text}
#        Append To List  ${actual_list}  ${element.text}
#
#    END
#    Lists Should Be Equal   ${expectedList}  ${actual_list}
#select the Card
#    [arguments]        ${cardname}
#    ${elements}=    Get WebElements      css:.card-title
#    ${index}=       Set Variable    1
#    FOR    ${element}    IN    @{elements}
#        Exit For Loop If    '${cardname}' == '${element.text}'
#        ${index}=  Evaluate     ${index} + 1
#
#    END
#    Click Button    xpath:(//div[@class="card-footer"])[${index}]/button
#    Click Element   css:.nav-link.btn.btn-primary
#    Click Button    css:*[class*=btn-danger]
#    Click Button    css:*[class*=btn-default]
#    Sleep    5
#
#
#
##navigate the drop downs
##    Select From List By Value  xpath://select[@id="dropdown-class-example"]     option1
##
##add the name to the input box
##    Input Text    css:input[id="name"]      prasad
##    Click Element    css:*[id='alertbtn']
#
#close the Browser
#    Close Browser
