*** Keywords ***
Fill User Credit Card Data
  [Arguments]   ${cc}
  Input Field Card Number   ${cc.NUMBER}
  Input Field Expiry Date   ${cc.EXPIRY}
  Input Field CVV           ${cc.CVV}

Pick Promo
  [Arguments]   ${promo}
  Select Checkbox Promo   ${promo}
  ${price}=   Get Promo Price   Visa
  ${price}=   Convert Price To Integer    ${price}
  Verify Price After Promo    ${price}

Verify Price After Promo
  [Arguments]   ${promo}
  ${currentPrice}=   Get Total Price
  ${currentPrice}=   Convert Price To Integer    ${currentPrice}

  ${priceAfterPromo}=   Evaluate    ${AMOUNTS}-${promo}
  Set Test Variable    ${priceAfterPromo}
  Should Be True    '${currentPrice}'=='${priceAfterPromo}'

Submit Payment with Credit Card
  Click Button Pay Now
  Select Frame    tag=iframe
  Verify Issue Bank Page
  Verify Merchant Name    Sample Store
  Verify Total Amount     ${priceAfterPromo}
  Input Field Password    ${OTP}
  Click Button OK
