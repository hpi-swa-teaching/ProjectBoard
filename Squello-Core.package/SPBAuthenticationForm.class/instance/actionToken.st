actions
actionToken

	^ self token ifNil: [SPBGithubAPI token].