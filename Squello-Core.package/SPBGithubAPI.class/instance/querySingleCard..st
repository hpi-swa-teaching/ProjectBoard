api calls get request
querySingleCard: aNumber

	"aNumber => Card ID"
	| url |
	url := 'https://api.github.com/projects/columns/cards/' , aNumber.
	
	^ self getRequestToURL: url.