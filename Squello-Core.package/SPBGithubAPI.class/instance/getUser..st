api call post request
getUser: aString

	| url |
	url := 'https://api.github.com/users/' , aString.
	
	^ self getRequestToURL: url.