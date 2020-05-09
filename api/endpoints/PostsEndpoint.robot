*** Keywords ***
Get All Posts
  ${response}=    GET Request    ${ALIAS}   /posts
  [Return]    ${response}

Get Post By ID
  [Arguments]   ${post_id}
  ${response}=    GET Request    ${ALIAS}   /posts/${post_id}
  [Return]    ${response}

Get Post By User ID
  [Arguments]   ${user_id}
  ${response}=    GET Request    ${ALIAS}     /posts?userId=${user_id}
  [Return]    ${response}

Create A Post
  [Arguments]   ${body}
  ${response}=    POST Request    ${ALIAS}    /posts    json=${body}
  [Return]    ${response}

Update A Post
  [Arguments]   ${post_id}    ${body}
  Set Request Body    ${body}
  ${response}=    PUT Request    ${ALIAS}    /posts/${post_id}   json=${body}
  [Return]    ${response}

Update A Post Partialy
  [Arguments]   ${post_id}    ${body}
  Set Request Body    ${body}
  ${response}=    PATCH Request    ${ALIAS}    /posts/${post_id}    json=${body}
  [Return]    ${response}

Delete A Post
  [Arguments]   ${post_id}
  ${response}=    DELETE Request    ${ALIAS}    /posts/${post_id}
  [Return]    ${response}
