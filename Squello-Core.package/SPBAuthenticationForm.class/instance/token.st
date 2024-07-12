accessing
token

	^ token
		ifNil: [token := SPBAuthenticator token].