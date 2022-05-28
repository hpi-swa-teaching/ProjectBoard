api calls get request
queryCards: aNumber

	"aNumber => Column ID"
	| url |
	url := 'https://api.github.com/projects/columns/' , aNumber , '/cards'.
	
	^ self getRequestToURL: url.