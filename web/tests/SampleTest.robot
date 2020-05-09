*** Settings ***
Resource          ../../utils/_UTILS_IMPORT.robot
Resource          ../config.robot
Resource          ../pages/_PAGES_IMPORT.robot
Resource          ../logics/_LOGICS_IMPORT.robot

Suite Setup       Open Midtrans Website
Test Setup        Go To    url=${URL}
Suite Teardown    Close All Browsers

*** Test Case ***
Success Credit Card Payment
  ${user}=        Generate User Data
  ${itemName}=    Get Item Name
  ${itemPrice}=   Get Item Price
  Buy Item

  Submit Form User          ${user}
  Verify Order Details      ${itemName}    ${itemPrice}
  Verify Shipping Details   ${USER}
  Open Payment Method
  Pick Payment Method           Credit Card
  Fill User Credit Card Data    ${VALID_CC}
  Pick Promo                    Visa
  Submit Payment with Credit Card
  Verify Notification Payment Success

Failed Credit Card Payment
  ${user}=    Generate User Data
  ${itemName}=    Get Item Name
  ${itemPrice}=   Get Item Price
  Buy Item

  Submit Form User          ${user}
  Verify Order Details      ${itemName}    ${itemPrice}
  Verify Shipping Details   ${USER}
  Open Payment Method
  Pick Payment Method           Credit Card
  Fill User Credit Card Data    ${INVALID_CC}
  Pick Promo                    Visa
  Submit Payment with Credit Card
