*** Keywords ***
Verify User Name
  [Arguments]   ${name}
  Wait Until Page Contains Element    //android.widget.TextView[@resource-id='${APP_PACKAGE}:id/textViewName'][@text='${name}']    timeout=${FAST_TIMEOUT}   error=Username '${name}' not visible on HomePage

Verify User Email
  [Arguments]   ${email}
  Wait Until Page Contains Element    //android.widget.TextView[@resource-id='${APP_PACKAGE}:id/textViewEmail'][@text='${email}']    timeout=${FAST_TIMEOUT}   error=User Email '${email}' not visible on HomePage

Verify User Password
  [Arguments]   ${password}
  Wait Until Page Contains Element    //android.widget.TextView[@resource-id='${APP_PACKAGE}:id/textViewPassword'][@text='${password}']    timeout=${FAST_TIMEOUT}   error=User Password '${password}' not visible on HomePage
