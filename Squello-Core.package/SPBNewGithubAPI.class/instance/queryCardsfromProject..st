cards
queryCardsfromProject: anotherString

	"aString => Column ID"
	"anotherString => Project ID"
	| data response |
	data := (self getQueryColumnQuery: anotherString) parseAsJson.
	response := self postRequestwithData: data.
	^ (((response at: 'data') at: 'node') at: 'items') at: 'nodes'.
	