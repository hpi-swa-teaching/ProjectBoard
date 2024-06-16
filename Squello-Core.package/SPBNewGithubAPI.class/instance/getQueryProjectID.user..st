queries
getQueryProjectID: aNumber user: aString

^ '{"query":"query{', self userString ,'(login: \"', aString , '\") {projectV2(number: ', aNumber asString , '){id}}}"}'.