*** Settings ***
Library         SeleniumLibrary
Library         Collections



*** Keywords ***

verify Card titles in the shop page
    @{expectedList}=    Create List     iphone X   Samsung Note 8  Nokia Edge  Blackberry
    ${elements}=    Get WebElements      css:.card-title
    @{actual_list}=     Create List

    FOR    ${element}    IN    @{elements}
        Log    ${element.text}
        Append To List  ${actual_list}  ${element.text}

    END
    Lists Should Be Equal   ${expectedList}  ${actual_list}

select the Card
    [arguments]        ${cardname}
    ${elements}=    Get WebElements      css:.card-title
    ${index}=       Set Variable    1
    FOR    ${element}    IN    @{elements}
        Exit For Loop If    '${cardname}' == '${element.text}'
        ${index}=  Evaluate     ${index} + 1

    END
    Click Button    xpath:(//div[@class="card-footer"])[${index}]/button
    Click Element   css:.nav-link.btn.btn-primary
#    Click Button    css:*[class*=btn-danger]
#    Click Button    css:*[class*=btn-default]
#    Sleep    5
