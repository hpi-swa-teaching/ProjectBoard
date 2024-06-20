api calls get request
queryProject: aNumber

	"aNumber => Project ID"
	| url |
	url := 'https://api.github.com/projects/' , aNumber.
	
	^ self getRequestToURL: url.