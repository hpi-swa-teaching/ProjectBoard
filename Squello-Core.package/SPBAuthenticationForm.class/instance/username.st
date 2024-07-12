accessing
username

	^ username
		ifNil: [username := SPBAuthenticator username].