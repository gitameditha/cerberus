*** Settings ***
Library     String
Library     SeleniumLibrary    run_on_failure=Log And Capture Error    screenshot_root_directory=screenshot
Library     FakerLibrary

*** Variables ***
${BROWSER}            Chrome
${URL}                https://demo.midtrans.com/
${IFRAME}             snap-midtrans

${PAYMENT_METHOD}     Credit/Debit Card

&{VALID_CC}           NUMBER=4811111111111114
...                   EXPIRY=0726
...                   CVV=123

&{INVALID_CC}         NUMBER=4911111111111113
...                   EXPIRY=0726
...                   CVV=123

${OTP}                112233

${PROMO}              Potongan 10 Rupiah

${MERCHANT}           Rubicon Store${SPACE}

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
