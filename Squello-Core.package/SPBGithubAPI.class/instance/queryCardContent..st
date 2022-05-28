api calls get request
queryCardContent: aString
	
	"aString => content_url"
	^ self getRequestToURL: aString.