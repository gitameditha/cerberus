*** Keywords ***
Verify Button Back
  ${locator}=   Set Variable    css=.header-prev
  Wait Until Element Is Visible   ${locator}
  [Return]      ${locator}

Click Button Back
  ${locator}=   Verify Button Back
  Click Element   ${locator}

Verify Field Card Number
  ${locator}=   Set Variable    name=cardnumber
  Wait Until Element Is Visible   ${locator}
  [Return]      ${locator}

Input Field Card Number
  [Arguments]   ${number}
  ${locator}=   Verify Field Card Number
  Click Element    ${locator}
  Input Text    ${locator}    ${number}

Verify Field Expiry Date
  ${locator}=   Set Variable    css=[placeholder='MM / YY']
  Wait Until Element Is Visible   ${locator}
  [Return]      ${locator}

Input Field Expiry Date
  [Arguments]   ${date}
  ${locator}=   Verify Field Expiry Date
  Click Element    ${locator}
  Input Text    ${locator}    ${date}

Verify Field CVV
  ${locator}=   Set Variable    css=[placeholder='123']
  Wait Until Element Is Visible   ${locator}
  [Return]      ${locator}

Input Field CVV
  [Arguments]   ${cvv}
  ${locator}=   Verify Field CVV
  Click Element    ${locator}
  Input Text    ${locator}    ${cvv}

Verify Checkbox Promo
  [Arguments]   ${promo}
  ${locator}=   Set Variable    //div[@class='checkbox checkbox-left']/label[text()='${promo}']
  Wait Until Element Is Visible   ${locator}
  [Return]      ${locator}

Select Checkbox Promo
  [Arguments]   ${promo}
  ${locator}=   Verify Checkbox Promo    ${promo}
  Click Element    ${locator}

Verify Selected Checkbox Promo
  [Arguments]   ${promo}
  ${locator}=   Verify Checkbox Promo    ${promo}
  Checkbox Should Be Selected    ${locator}

Get Promo Price
  [Arguments]   ${promo}
  ${price}=   Get Text    //div[@class='checkbox checkbox-left']/label[text()='${promo}']/span
  [Return]      ${price}

Verify Button Pay Now
  ${locator}=   Set Variable    //a[@class='button-main-content']
  Wait Until Element Is Visible   ${locator}
  [Return]      ${locator}

Click Button Pay Now
  ${locator}=   Verify Button Pay Now
  Click Element   ${locator}
