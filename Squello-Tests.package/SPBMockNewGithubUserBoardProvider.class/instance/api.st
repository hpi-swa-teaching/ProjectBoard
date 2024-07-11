accessing
api
	
	api ifNil: [api := SPBMockNewGithubAPI new].
	^ api.