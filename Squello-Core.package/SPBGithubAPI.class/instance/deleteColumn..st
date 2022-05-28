api calls delete request
deleteColumn: aNumber
	
	"aNumber => column ID"
	
	| url |
	url := 'https://api.github.com/projects/columns/' , aNumber asString.
	
	^ self deleteRequestToURL: url.
