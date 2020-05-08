*** Settings ***
Library     SeleniumLibrary    run_on_failure=Log And Capture Error    screenshot_root_directory=screenshot
Library     FakerLibrary
Library     String

*** Variables ***
${BROWSER}      Chrome
${URL}          https://demo.midtrans.com/
${IFRAME}       snap-midtrans

&{VALID_CC}     NUMBER=4811111111111114
...             EXPIRY=0720
...             CVV=123

&{INVALID_CC}   NUMBER=4911111111111113
...             EXPIRY=0720
...             CVV=123

${OTP}          112233

*** Keywords ***
Open Midtrans Website
  Open Browser    url=${URL}    browser=${BROWSER}
  Maximize Browser Window

Generate User Data
  ${name}=          FakerLibrary.Name
  ${email}=         FakerLibrary.Email    mail.com
  ${phoneNumber}=   FakerLibrary.Random Number    digits=11   fix_len=${TRUE}
  ${city}=          FakerLibrary.City
  ${address}=       FakerLibrary.Address
  ${postalCode}=    FakerLibrary.Postcode

  &{USER}=    Create Dictionary    NAME=${name}
  ...   EMAIL=${email}    PHONE=+62${phoneNumber}
  ...   CITY=${city}      ADDRESS=${address}
  ...   POSTCODE=${postalCode}
  [Return]    ${USER}

Convert Price To Integer
  [Arguments]   ${price}
  ${price}=   Remove String    ${price}    - Rp
  ${price}=   Remove String    ${price}    ,
  Convert To Integer    ${price}
  [Return]    ${price}
