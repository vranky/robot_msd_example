*** Keywords ***

Navigate to smartphone category
    Wait Until Element is Visible   //*[@id="main"]
    Wait Until Element is Visible   //*[@id="menucategories"]
    Click Link                      //*[@href="/mobilne-telefony-3"]
    Wait Until Element is Visible   //*[@class="categoryName"]

Navigate to Cart
    Wait Until Element is Visible   //*[@href="/kosik"]
    Click Element   //*[@href="/kosik"]
