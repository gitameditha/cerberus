*** Keywords ***
Input User Data
  [Arguments]   ${user}
  Input Field Name            ${user.NAME}
  Input Field Email           ${user.EMAIL}
  Input Field Phone Number    ${user.PHONE}
  Input Field City            ${user.CITY}
  Input Field Address         ${user.ADDRESS}
  Input Field Postal Code     ${user.POSTCODE}

Submit Form User
  [Arguments]   ${user}
  Input User Data    ${user}
  Click Button Checkout
  Select Frame    ${IFRAME}
  Verify Logo Store
