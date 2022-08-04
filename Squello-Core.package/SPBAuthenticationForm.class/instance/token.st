accessing
token

	^ token  ifNil: [token := SPBGithubAPI token].