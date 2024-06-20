accessing
api

	api ifNil: [api := SPBUserGithubAPI new].
	^ api.