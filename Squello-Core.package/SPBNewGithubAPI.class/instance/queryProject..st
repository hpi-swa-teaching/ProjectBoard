project
queryProject: aString

	"aString => projectID"
	| data responseJson |
	data := (self getQueryProjectQuery: aString) parseAsJson.
	responseJson := self postRequestwithData: data.
	^ ((responseJson at: 'data') at: 'node').