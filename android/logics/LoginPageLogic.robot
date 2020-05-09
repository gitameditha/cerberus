*** Keywords ***
Ensure On Login Page
  ${status}=    Run Keyword And Return Status    Verify Apps Version
  Run Keyword If    ${status}==${FALSE}    Open Login Page

Verify On Login Page
  LoginPage.Verify Apps Logo
  Verify Apps Version
  LoginPage.Verify Email Field
  LoginPage.Verify Password Field
  Verify Login Button
  Verify Register Link

Login With User
  [Arguments]   ${email}    ${password}
  LoginPage.Set Email Field    ${email}
  LoginPage.Set Password Field    ${password}
  Click Login Button

Open Register Page
  Click Register Link
  Verify On Register Page
