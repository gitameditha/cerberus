*** Keywords ***
Verify Apps Logo
  Wait Until Page Contains Element   //android.widget.ImageView    timeout=${FAST_TIMEOUT}   error='Apps Logo' is not visible on Login Page

Verify Apps Version
  Wait Until Page Contains Element   //android.widget.TextView[@text='VERSION - V4']   timeout=${FAST_TIMEOUT}   error='Apps Version' is not visible on Login Page

Verify Email Field
  ${locator}=   Set Variable    id=textInputEditTextEmail
  Wait Until Page Contains Element    ${locator}    timeout=${FAST_TIMEOUT}   error='Email' Field not visible on Login Page
  RETURN    ${locator}

Set Email Field
  [Arguments]   ${email}
  ${locator}=   LoginPage.Verify Email Field
  Clear Text    ${locator}
  Input Text    ${locator}    ${email}

Verify Password Field
  ${locator}=   Set Variable    id=textInputEditTextPassword
  Wait Until Page Contains Element    ${locator}    timeout=${FAST_TIMEOUT}   error='Password' Field not visible on Login Page
  RETURN    ${locator}

Set Password Field
  [Arguments]   ${password}
  ${locator}=   LoginPage.Verify Password Field
  Clear Text    ${locator}
  Input Text    ${locator}    ${password}

Verify Login Button
  ${locator}=   Set Variable    id=appCompatButtonLogin
  Wait Until Page Contains Element    ${locator}    timeout=${FAST_TIMEOUT}   error='Login' Button not visible on Login Page
  RETURN    ${locator}

Click Login Button
  ${locator}=   Verify Login Button
  Click Element   ${locator}

Verify Register Link
  ${locator}=   Set Variable    id=textViewLinkRegister
  Wait Until Page Contains Element    ${locator}    timeout=${FAST_TIMEOUT}   error='Register' Link not visible on Login Page
  RETURN    ${locator}

Click Register Link
  ${locator}=   Verify Register Link
  Click Element   ${locator}
