columns
queryColumns: aString
	"aString => Project ID"
	
	| data responseJson node |
	data := (self getQueryColumnsQuery: aString) parseAsJson.
	responseJson := self postRequestwithData: data.
	node := (((responseJson at: 'data') at: 'node') at: 'field').
	node ifNil: [^ self error: 'No Status Field in Project'].
	^ (node at: 'options').