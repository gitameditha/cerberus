*** Settings ***
Library     AppiumLibrary
Library     Process
Library     Collections


*** Variables ***
${APPIUM_SERVER}      http://localhost:4729/wd/hub
${UDID}               C3D5033C-F0E8-4C13-A66D-91F8C243D1CD
${DEVICE_NAME}        iPhone SE (2nd generation) (13.4.1)
${APP_PATH}           /Users/yayankuswara/Workspace/learning/robotframework/cerberus/files/calculator.ipa
${PORT}               4729
${BOOTSTRAP_PORT}     50009

*** Keywords ***
Spawn Appium Server
  Start Process   appium
  ...             -p    ${PORT}
  ...             -bp   50009
  ...             -U    ${UDID}
  Sleep   3
  Open Application    ${APPIUM_SERVER}
  ...     udid=${UDID}
  ...     app=${APP_PATH}
  ...     platformName=iOS
  ...     automationName=XCUITest
  ...     platformVersion=13.4.1
  ...     useNewWDA=true
  ...     showXcodeLog=true
  ...     deviceName=${DEVICE_NAME}


*** Test Cases ***
XXX
  log to console    TEST
