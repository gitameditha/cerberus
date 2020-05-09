*** Keywords ***
Verify Profile Exist
  [Arguments]   ${name}   ${email}    ${password}
  Verify User Name        ${name}
  Verify User Email       ${email}
  Verify User Password    ${password}
