actions
actionUserToken

	^ self userToken ifNil: [SPBGithubAPI token].