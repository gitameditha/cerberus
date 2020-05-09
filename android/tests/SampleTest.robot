*** Settings ***
Resource          ../../utils/_UTILS_IMPORT.robot
Resource          ../config.robot
Resource          ../logics/_LOGICS_IMPORT.robot
Resource          ../pages/_PAGES_IMPORT.robot
Suite Setup       Spawn Appium Server
Suite Teardown    Close Application

*** Test Cases ***
Register New User
  [Setup]   Ensure On Register Page

  ${name}=        Set Variable    ${USERNAME.VALID}
  ${email}=       Set Variable    ${EMAIL.VALID}
  ${password}=    Set Variable    ${PASSWORD.VALID}
  Register User   ${name}   ${email}    ${password}
  Verify Toast Message    Registration Successful

Register With Existing User
  [Setup]   Ensure On Register Page

  ${name}=        Set Variable    ${USERNAME.VALID}
  ${email}=       Set Variable    ${EMAIL.VALID}
  ${password}=    Set Variable    ${PASSWORD.VALID}
  Register User   ${name}   ${email}    ${password}
  Verify Toast Message    Email Already Exists

Check Field Name On Register Form
  [Setup]   Ensure On Register Page

  Ensure Register Button Visible
  RegisterPage.Set Name Field    ${EMPTY}
  Click Register Button
  Verify Field Alert    Enter Full Name

  RegisterPage.Set Name Field    ${USERNAME.INVALID}
  Click Register Button
  # Verify Field Alert    Enter Valid Name >> It should be showing this error

  RegisterPage.Set Name Field    ${USERNAME.VALID}
  Click Register Button
  Verify No Field Alert   Enter Full Name

Check Field Email On Register Form
  [Setup]   Ensure On Register Page

  RegisterPage.Set Email Field    ${EMPTY}
  Click Register Button
  Verify Field Alert    Enter Valid Email

  RegisterPage.Set Email Field    ${EMAIL.INVALID}
  Click Register Button
  # Verify Field Alert    Enter Valid Email >> It should be showing this error

  RegisterPage.Set Email Field    ${EMAIL.VALID}
  Click Register Button
  Verify No Field Alert   Enter Valid Email

Check Field Password On Register Form
  [Setup]   Ensure On Register Page

  RegisterPage.Set Password Field    ${EMPTY}
  Click Register Button
  Verify Field Alert    Enter Password

  RegisterPage.Set Password Field    ${PASSWORD.VALID}
  Click Register Button
  Verify No Field Alert   Enter Password

Check Field Confirm Password On Register Form
  [Setup]   Ensure On Register Page

  RegisterPage.Set Confirm Password Field    ${EMPTY}
  Click Register Button
  Verify Field Alert    Password Does Not Matches

  RegisterPage.Set Confirm Password Field    Different Password
  Click Register Button
  Verify Field Alert    Password Does Not Matches

  RegisterPage.Set Confirm Password Field    ${PASSWORD.VALID}
  Click Register Button
  Verify No Field Alert   Password Does Not Matches

Check Field Email On Login Form
  [Setup]   Ensure On Login Page

  Click Login Button
  Verify Field Alert    Enter Valid Email

  LoginPage.Set Email Field    ${EMAIL.INVALID}
  Click Login Button
  # Verify Field Alert    Enter Valid Email  >> It should be showing this error

  LoginPage.Set Email Field    ${EMAIL.UNREGISTERED}
  Click Login Button
  # Verify No Field Alert   Enter Valid Email >> It should be showing this error

Check Field Password On Login Form
  [Setup]   Ensure On Login Page

  Click Login Button
  # Verify Field Alert    Enter Password >> It should be showing this error

  LoginPage.Set Password Field    ${PASSWORD.VALID}
  Click Login Button
  Verify No Field Alert   Enter Password

Login With Un Existing User
  ${email}=       Set Variable    ${EMAIL.UNREGISTERED}
  ${password}=    Set Variable    ${PASSWORD.VALID}
  Login With User   ${email}    ${password}
  Verify Toast Message    Wrong Email or Password

Login With Invalid Password
  ${email}=       Set Variable    ${EMAIL.VALID}
  ${password}=    Set Variable    ${PASSWORD.INVALID}
  Login With User   ${email}    ${password}
  Verify Toast Message    Wrong Email or Password

Login With Valid Account
  ${name}=        Set Variable    ${USERNAME.VALID}
  ${email}=       Set Variable    ${EMAIL.VALID}
  ${password}=    Set Variable    ${PASSWORD.VALID}
  Login With User   ${email}    ${password}
  Verify Profile Exist    ${name}   ${email}    ${password}
