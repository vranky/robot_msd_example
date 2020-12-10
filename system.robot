*** Keywords ***
Open Favourite e-shop
    Open Browser  ${BaseURL}  ${Browser}
    Maximize Browser Window
    Set Selenium Speed  ${Delay}
    Set Selenium Timeout    ${Timeout}
    Close GDPR Popup

Open Favourite e-shop with smartphone category
    Open Browser  ${CustomURL}  ${Browser}
    Maximize Browser Window
    Set Selenium Speed  ${Delay}
    Set Selenium Timeout    ${Timeout}
    Close GDPR Popup

Close GDPR Popup
    ${isPopupPresent}=     Run keyword And Return Status    Wait Until Page Contains Element    //a[contains(@id, 'cookie-consent_ok-btn')]    timeout=2   error=false
    ${isPopupPresent}    Click Element   xpath://a[contains(@id, 'cookie-consent_ok-btn')]

Exit Test
    Capture Page Screenshot
    Close Browser