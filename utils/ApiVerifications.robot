*** Keywords ***
Verify Request Succeed
  [Arguments]   ${res}
  Should Be True    ${res.status_code}==${200} or ${res.status_code}==${201}

Verify Data Type Integer
  [Arguments]   ${data}
  ${type}=    Evaluate     type($data).__name__
  Should Be Equal As Strings    ${type}    int

Verify Data Type String
  [Arguments]   ${data}
  ${type}=    Evaluate     type($data).__name__
  Should Be Equal As Strings    ${type}    str
