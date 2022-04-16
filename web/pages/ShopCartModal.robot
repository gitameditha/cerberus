*** Keywords ***
Verify Shopping Cart Modal
  Wait Until Element Is Visible    //div[@class='cart-content buying']

Verify Field Name
  ${locator}=   Set Variable      //input[@data-reactid='.0.0.1.0.3.0.0.0.1.0']
  Wait Until Element Is Visible   ${locator}
  RETURN      ${locator}

Input Field Name
  [Arguments]     ${name}
  ${locator}=     Verify Field Name
  Click Element   ${locator}
  Input Text      ${locator}    ${name}

Verify Field Email
  ${locator}=   Set Variable   //input[@data-reactid='.0.0.1.0.3.0.0.1.1.0']
  Wait Until Element Is Visible   ${locator}
  RETURN      ${locator}

Input Field Email
  [Arguments]   ${email}
  ${locator}=   Verify Field Email
  Input Text    ${locator}    ${email}

Verify Field Phone Number
  ${locator}=   Set Variable   //input[@data-reactid='.0.0.1.0.3.0.0.2.1.0']
  Wait Until Element Is Visible   ${locator}
  RETURN      ${locator}

Input Field Phone Number
  [Arguments]   ${phoneNumber}
  ${locator}=   Verify Field Phone Number
  Input Text    ${locator}    ${phoneNumber}

Verify Field City
  ${locator}=   Set Variable   //input[@data-reactid='.0.0.1.0.3.0.0.3.1.0']
  Wait Until Element Is Visible   ${locator}
  RETURN      ${locator}

Input Field City
  [Arguments]   ${city}
  ${locator}=   Verify Field City
  Input Text    ${locator}    ${city}

Verify Field Address
  ${locator}=   Set Variable   //textarea[@data-reactid='.0.0.1.0.3.0.0.4.1.0']
  Wait Until Element Is Visible   ${locator}
  RETURN      ${locator}

Input Field Address
  [Arguments]   ${address}
  ${locator}=   Verify Field Address
  Input Text    ${locator}    ${address}

Verify Field Postal Code
  ${locator}=   Set Variable   //input[@data-reactid='.0.0.1.0.3.0.0.5.1.0']
  Wait Until Element Is Visible   ${locator}
  RETURN      ${locator}

Input Field Postal Code
  [Arguments]   ${postalCode}
  ${locator}=   Verify Field Postal Code
  Input Text    ${locator}    ${postalCode}

Verify Button Checkout
  ${locator}=   Set Variable       //div[@class='cart-checkout'][.='CHECKOUT']
  Wait Until Element Is Visible    ${locator}
  RETURN    ${locator}

Click Button Checkout
  ${locator}=   Verify Button Checkout
  Click Element    ${locator}

Verify Button Setting
  ${locator}=   Set Variable       css=.cart-checkout-settings
  Wait Until Element Is Visible    ${locator}
  RETURN    ${locator}

Click Button Setting
  ${locator}=   Verify Button Setting
  Click Element    ${locator}

Verify Button Start
  ${locator}=   Set Variable       css=.btn-primary
  Wait Until Element Is Visible    ${locator}
  RETURN    ${locator}

Click Button Start
  ${locator}=   Verify Button Start
  Click Element    ${locator}
