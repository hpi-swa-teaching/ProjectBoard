api calls
queryCardContent: aString
	
	"aString -> content-url"
	^ self getRequestToURL: aString.