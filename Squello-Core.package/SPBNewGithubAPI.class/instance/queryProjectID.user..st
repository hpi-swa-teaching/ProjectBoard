project
queryProjectID: aNumber user: aString

	| data responseJson |
	data := ('{"query":"query{', self userString ,'(login: \"', aString , '\") {projectV2(number: ', aNumber asString , '){id}}}"}') parseAsJson.
	responseJson := self postRequestwithData: data.
	^ (((responseJson at: 'data') at: self userString) at: 'projectV2') at: 'id'