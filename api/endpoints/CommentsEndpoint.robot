*** Keywords ***
Get All Comments
  ${response}=    GET Request    ${ALIAS}    	/posts/1/comments
  RETURN    ${response}

Get Comments By Post ID
  [Arguments]   ${post_id}
  ${response}=    GET Request    ${ALIAS}     /comments?postId=${post_id}
  RETURN    ${response}
