columns
queryColumns: aString
	"aString => Project ID"
	
	| data responseJson noneEmptyNodes nodes |
	data := (self getQueryColumnsQuery: aString) parseAsJson.
	responseJson := self postRequestwithData: data.
	nodes := ((((responseJson at: 'data') at: 'node') at: 'fields') at: 'nodes').
	noneEmptyNodes := nodes select: [:each| (each at: 'name') = 'Status'].
	noneEmptyNodes isEmpty 
		ifTrue: [^ OrderedCollection new.].
	^ (noneEmptyNodes first at: 'options').