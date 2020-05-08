*** Keywords ***
Verify Order Details
  [Arguments]   ${itemName}    ${itemPrice}
  Verify Amount   ${itemPrice}
  Ensure Selected Tab    order details
  Verify Item Details    ${itemName}    ${itemPrice}

  ${AMOUNTS}=   Convert Price To Integer    ${itemPrice}
  Set Test Variable    ${AMOUNTS}

Verify Shipping Details
  [Arguments]   ${user}
  Ensure Selected Tab    shipping details
  Verify Name   ${user.NAME}
  Verify Phone Number   ${user.PHONE}
  Verify Email    ${user.EMAIL}
  Verify Address    ${user.ADDRESS}   ${user.CITY}    ${user.POSTCODE}

Open Tab
  [Arguments]           ${tab}
  Click Tab             ${tab}
  Verify Selected Tab   ${tab}

Ensure Selected Tab
  [Arguments]   ${tab}
  ${status}=    Run Keyword And Return Status    Verify Selected Tab    tab=${tab}    timeout=1
  Run Keyword If    '${status}'=='${FALSE}'    Open Tab    ${tab}

Open Payment Method
  Click Button Continue
  Current Frame Should Contain        Select Payment
