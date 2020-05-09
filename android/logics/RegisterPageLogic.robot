*** Keywords ***
Ensure On Register Page
  ${status}=    Run Keyword And Return Status    Verify Confirm Password Field
  Run Keyword If    ${status}==${FALSE}    Open Register Page

Verify On Register Page
  RegisterPage.Verify Apps Logo
  RegisterPage.Verify Email Field
  RegisterPage.Verify Password Field
  Verify Confirm Password Field

Ensure Register Button Visible
    ${status}=    Run Keyword And Return Status    Verify Register Button
    Run Keyword If    ${status}==${FALSE}    Run Keywords    Swipe Down Half
    ...     AND       Verify Register Button

Register User
  [Arguments]   ${name}   ${email}    ${password}
  RegisterPage.Set Name Field    ${name}
  RegisterPage.Set Email Field    ${email}
  RegisterPage.Set Password Field    ${password}
  RegisterPage.Set Confirm Password Field    ${password}
  Ensure Register Button Visible
  Click Register Button

Open Login Page
  Ensure Login Link Visible
  Click Login Link
  Verify On Login Page

Ensure Login Link Visible
  ${status}=    Run Keyword And Return Status    Verify Login Link
  Run Keyword If    ${status}==${FALSE}    Run Keywords    Swipe Down Half
  ...     AND       Verify Login Link
