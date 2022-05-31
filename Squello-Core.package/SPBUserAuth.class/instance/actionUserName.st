actions
actionUserName
	^ userName ifNil: [SPBGithubAPI username]