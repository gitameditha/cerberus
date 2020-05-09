*** Settings ***
Library     AppiumLibrary   run_on_failure=Log And Capture Error
Library     Process
Library     Collections


*** Variables ***
${APPIUM_SERVER}      http://localhost:4729/wd/hub
${UDID}               YPW89LB6HIGIIJDE
${PORT}               4729
${BOOTSTRAP_PORT}     50009
${SOURCE_PATH}        /Users/yayankuswara/Workspace/learning/robotframework/cerberus
${APK_PATH}           ${SOURCE_PATH}/files/sample.apk
${APP_PACKAGE}        com.loginmodule.learning
# ${APP_ACTIVITY}       ${APP_PACKAGE}.activities.LoginActivity
${FAST_TIMEOUT}       3


#Test Data
&{USERNAME}               VALID=Yayan Kuswara
...                       INVALID=!@#$%^&*()_+

&{EMAIL}                  VALID=yayan@kuswara.com
...                       INVALID=invalidemail
...                       UNREGISTERED=unregistered@email.com

&{PASSWORD}               VALID=validpassword
...                       INVALID=123

*** Keywords ***
Spawn Appium Server
  Clear Device Storage
  Start Process   appium
  ...             -p    ${PORT}
  ...             -bp   50009
  ...             -U    ${UDID}
  Sleep   ${FAST_TIMEOUT}
  Clear Device Storage
  Open Application    ${APPIUM_SERVER}
  ...     udid=${UDID}
  ...     platformName=Android
  ...     deviceName=emulator
  ...     app=${APK_PATH}
  # ...     appPackage=${APP_PACKAGE}
  # ...     appActivity=${APP_ACTIVITY}
  ...     alias=Device
  ...     newCommandTimeout=50000
  Register Keyword To Run On Failure    Capture Page Screenshot

  Get Device Dimensions
  Verify On Login Page

Clear Device Storage
  Run Process    adb -s ${UDID} shell pm clear ${APP_PACKAGE}   shell=true
