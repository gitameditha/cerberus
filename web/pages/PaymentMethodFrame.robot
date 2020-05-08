*** Keywords ***
Verify Button Back
  ${locator}=   Set Variable    css=.header-prev
  Wait Until Element Is Visible   ${locator}
  [Return]      ${locator}

Click Button Back
  ${locator}=   Verify Button Back
  Click Element   ${locator}

Verify Payment Method
  [Arguments]   ${method}
  ${locator}=   Set Variable    //div[.='${method}']
  Wait Until Element Is Visible   ${locator}
  [Return]      ${locator}

Click Payment Method
  [Arguments]   ${method}
  ${locator}=   Verify Payment Method    ${method}
  Click Element   ${locator}
