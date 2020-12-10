*** Variables ***
${SORT_DESC_BTN}              //*[@href="?sortOrder=1&sortBy=Price"]
${PRE_BASKED_MODAL}           //*[@data-dismiss="modal"]


*** Keywords ***
Sort Items By Price Descending
    Wait Until Element is Visible   ${SORT_DESC_BTN}
    Click Element                   ${SORT_DESC_BTN}

Add Phone By Index To Cart
    [Arguments]     ${phone_index}
    Wait Until Element is Visible   //*[@order-id=${phone_index}]//following-sibling::button[@type='submit']
    Click Element                   //*[@order-id=${phone_index}]//following-sibling::button[@type='submit']
    Wait Until Element is Visible   ${PRE_BASKED_MODAL}
    Click Element                   ${PRE_BASKED_MODAL}