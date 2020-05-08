*** Keywords ***
Verify Issue Bank Page
  Wait Until Element Is Visible   //h1[@class='left'][.='Issuing Bank']

Verify Merchant Name
  [Arguments]   ${merchantName}
  Wait Until Element Is Visible   //label[.='Merchant Name:']/following-sibling::div/p[@class='form-control-static'][.='${merchantName}']

Verify Total Amount
  [Arguments]   ${price}
  Wait Until Element Is Visible   //label[.='Amount:']/following-sibling::div/p[@class='form-control-static'][.='${price}.00']

Verify Card Number
  [Arguments]   ${cardnumber}
  Wait Until Element Is Visible   //label[.='Card Number:']/following-sibling::div/p[@class='form-control-static'][.='${cardnumber}']

Verify Field Password
  ${locator}=   Set Variable    id=PaRes
  Wait Until Element Is Visible   ${locator}
  [Return]      ${locator}

Input Field Password
  [Arguments]   ${password}
  ${locator}=   Verify Field Password
  Click Element    ${locator}
  Input Text    ${locator}    ${password}

Verify Button OK
  ${locator}=   Set Variable       //button[@class='btn btn-sm btn-success']
  Wait Until Element Is Visible    ${locator}
  [Return]    ${locator}

Click Button OK
  ${locator}=   Verify Button OK
    Click Button    ${locator}

Verify Transaction Failed
  Wait Until Element Is Visible   //div[@class='text-failed text-bold']/span[.='Transaction failed']
