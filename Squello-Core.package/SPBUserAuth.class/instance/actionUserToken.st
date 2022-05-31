actions
actionUserToken
	^ userToken ifNil: [SPBGithubAPI token]