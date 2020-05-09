*** Settings ***
Resource      ../../utils/_UTILS_IMPORT.robot
Resource      ../config.robot
Resource      ../endpoints/_ENDPOINTS_IMPORT.robot
Test Setup    Create Session    ${ALIAS}    ${HOST}   verify=true

*** Test Cases ***
Verify Data Types
  #Generate Dummy Data
  ${userId}=    Random Int
  ${title}=     Sentence
  ${body}=      Text

  #Set Request Body
  ${request_body}=    Create Dictionary   userId=${userId}   title=${title}    body=${body}

  #Call Post Enpoint
  ${res}=   Create A Post    ${request_body}

  #Verify Response Code
  Verify Request Succeed    ${res}

  #Verify Data Types
  Verify Data Type Integer    ${res.json()}[id]
  Verify Data Type Integer    ${res.json()}[userId]
  Verify Data Type String     ${res.json()}[title]
  Verify Data Type String     ${res.json()}[body]

Verify Response Body
  #Set Variable
  ${userId}=    Set Variable    ${12}
  ${title}=     Set Variable    recommendation
  ${body}=      Set Variable    motorcycle

  #Set Request Body
  ${request_body}=    Create Dictionary   userId=${userId}   title=${title}    body=${body}

  #Call Post Enpoint
  ${res}=   Create A Post    ${request_body}

  #Verify Response Code
  Verify Request Succeed    ${res}

  #Verify Response Body
  Should Be Equal As Integers   ${res.json()}[userId]   ${userId}
  Should Be Equal As Strings    ${res.json()}[title]    ${title}
  Should Be Equal As Strings    ${res.json()}[body]     ${body}
