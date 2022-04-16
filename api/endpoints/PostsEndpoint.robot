*** Keywords ***
Get All Posts
  ${response}=    GET Request    ${ALIAS}   /posts
  RETURN    ${response}

Get Post By ID
  [Arguments]   ${post_id}
  ${response}=    GET Request    ${ALIAS}   /posts/${post_id}
  RETURN    ${response}

Get Post By User ID
  [Arguments]   ${user_id}
  ${response}=    GET Request    ${ALIAS}     /posts?userId=${user_id}
  RETURN    ${response}

Create A Post
  [Arguments]   ${body}
  ${response}=    POST Request    ${ALIAS}    /posts    json=${body}
  RETURN    ${response}

Update A Post
  [Arguments]   ${post_id}    ${body}
  Set Request Body    ${body}
  ${response}=    PUT Request    ${ALIAS}    /posts/${post_id}   json=${body}
  RETURN    ${response}

Update A Post Partialy
  [Arguments]   ${post_id}    ${body}
  Set Request Body    ${body}
  ${response}=    PATCH Request    ${ALIAS}    /posts/${post_id}    json=${body}
  RETURN    ${response}

Delete A Post
  [Arguments]   ${post_id}
  ${response}=    DELETE Request    ${ALIAS}    /posts/${post_id}
  RETURN    ${response}
