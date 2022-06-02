actions
actionUserName
	^ self userName ifNil: [SPBGithubAPI username]