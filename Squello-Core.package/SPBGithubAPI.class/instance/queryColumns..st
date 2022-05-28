api calls get request
queryColumns: aNumber

	"aNumber => Project ID"
	| url |
	url := 'https://api.github.com/projects/' , aNumber , '/columns'.
	
	^ self getRequestToURL: url.