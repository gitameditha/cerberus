*** Keywords ***
Verify Button Close
  ${locator}=   Set Variable    css=.header-back
  Wait Until Element Is Visible   ${locator}
  [Return]      ${locator}

Click Button Close
  ${locator}=   Verify Button Close
  Click Element   ${locator}

Verify Logo Store
  Wait Until Element Is Visible    css=.logo-store

Get Total Price
  ${price}=     Get Text    css=.text-amount-amount
  [Return]      ${price}

Verify Amount
  [Arguments]   ${amount}
  ${actual}=    Get Text    css=.text-amount-amount
  Should Be Equal As Strings    ${actual}    ${amount}

Verify Tab
  [Arguments]   ${tab}
  ${locator}=   Set Variable    //li/a/span[.='${tab}']
  Wait Until Element Is Visible   ${locator}
  [Return]    ${locator}

Click Tab
  [Arguments]   ${tab}
  ${locator}=   Verify Tab    ${tab }
  Click Element   ${locator}

Verify Selected Tab
  [Arguments]   ${tab}    ${timeout}=${5}
  Wait Until Element Is Visible    //li[@class='active']/a/span[.='${tab}']   timeout=${timeout}

Verify Item Details
  [Arguments]   ${item}   ${price}
  Wait Until Element Is Visible   //tr[.='${item} ${price}']

Verify Name
  [Arguments]   ${name}
  Wait Until Element Is Visible   //div[.='Name']/following-sibling::div[.='${name}']

Verify Phone Number
  [Arguments]   ${phoneNumber}
  Wait Until Element Is Visible   //div[.='Phone number']/following-sibling::div[.='${phoneNumber}']

Verify Email
  [Arguments]   ${email}
  Wait Until Element Is Visible   //div[.='Email']/following-sibling::div[.='${email}']

Verify Address
  [Arguments]   ${address}    ${city}   ${postalCode}
  Wait Until Element Is Visible   //div[.='Address']/following-sibling::div[.='${address} ${city} ${postalCode}']

Verify Button Continue
  ${locator}=   Set Variable    css=.button-main
  Wait Until Element Is Visible   ${locator}
  [Return]      ${locator}

Click Button Continue
  ${locator}=   Verify Button Continue
  Click Element   ${locator}
