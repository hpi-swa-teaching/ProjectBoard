api calls get request
queryScopeHeaderOnly: aString

	| url request response |
	url := 'https://api.github.com/users/' , aString.
	request := self createGetRequestTo: url.
	response := (WebClient new initializeFromUrl: url) sendRequest: request.
	
	^ response headersAt: 'X-OAuth-Scopes'.