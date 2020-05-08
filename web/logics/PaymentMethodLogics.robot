*** Keywords ***
Pick Payment Method
  [Arguments]   ${method}
  Click Payment Method    ${method}
  Current Frame Should Contain        ${method}
