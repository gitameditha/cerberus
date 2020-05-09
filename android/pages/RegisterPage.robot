*** Keywords ***
#Inheritance
Verify Apps Logo
  LoginPage.Verify Apps Logo

Verify Name Field
  ${locator}=   Set Variable    id=textInputEditTextName
  Wait Until Page Contains Element    ${locator}    timeout=${FAST_TIMEOUT}   error='Name' Field not visible on Register Page
  [Return]    ${locator}

Set Name Field
  [Arguments]   ${name}
  ${locator}=   Verify Name Field
  Clear Text    ${locator}
  Input Text    ${locator}    ${name}

#Inheritance
Verify Email Field
  LoginPage.Verify Email Field

Set Email Field
  [Arguments]   ${email}
  LoginPage.Set Email Field    ${email}

#Inheritance
Verify Password Field
  LoginPage.Verify Password Field

Set Password Field
  [Arguments]   ${password}
  LoginPage.Set Password Field    ${password}

Verify Confirm Password Field
  ${locator}=   Set Variable    id=textInputEditTextConfirmPassword
  Wait Until Page Contains Element    ${locator}    timeout=${FAST_TIMEOUT}   error='Confirm Password' Field not visible on Register Page
  [Return]    ${locator}

Set Confirm Password Field
  [Arguments]   ${password}
  ${locator}=   RegisterPage.Verify Confirm Password Field
  Clear Text    ${locator}
  Input Text    ${locator}   ${password}

Verify Register Button
  ${locator}=   Set Variable    id=appCompatButtonRegister
  Wait Until Page Contains Element    ${locator}    timeout=${FAST_TIMEOUT}   error='Register' Button not visible on Register Page
  [Return]    ${locator}

Click Register Button
  ${locator}=   Verify Register Button
  Click Element    ${locator}

Verify Login Link
  ${locator}=   Set Variable    id=appCompatTextViewLoginLink
  Wait Until Page Contains Element    ${locator}    timeout=${FAST_TIMEOUT}   error='Login' Link not visible on Register Page
  [Return]    ${locator}

Click Login Link
  ${locator}=   Verify Login Link
  Click Element    ${locator}
