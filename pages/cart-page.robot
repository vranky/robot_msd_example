*** Keywords ***
Verify number of items in cart
    [Arguments]     ${number_of_phones}
    ${count}=   Get Element Count     //*[@name="Quantity"]
    Should Be True  ${count} == ${number_of_phones}
