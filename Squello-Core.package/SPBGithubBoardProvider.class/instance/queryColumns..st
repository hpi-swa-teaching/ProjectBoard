api calls
queryColumns: aNumber

	"aNumber -> Project id"
	| url |
	url := 'https://api.github.com/projects/' , aNumber , '/columns'.
	
	^ self getRequestToURL: url.