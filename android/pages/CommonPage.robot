*** Keywords ***
Verify Toast Message
  [Arguments]   ${message}
  Wait Until Page Contains Element    //android.widget.TextView[@resource-id='${APP_PACKAGE}:id/snackbar_text'][@text='${message}']    timeout=${FAST_TIMEOUT}   error=Toast Message '${message}' not visible

Verify Field Alert
  [Arguments]   ${error}
  Wait Until Page Contains Element    //android.widget.TextView[@text='${error}']    timeout=${FAST_TIMEOUT}   error=Field Error Alert '${error}' not visible

Verify No Field Alert
  [Arguments]   ${error}
  Page Should Not Contain Element    //android.widget.TextView[@text='${error}']
