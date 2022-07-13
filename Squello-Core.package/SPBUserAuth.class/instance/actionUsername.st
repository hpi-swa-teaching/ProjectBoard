actions
actionUsername

	^ self username ifNil: [SPBGithubAPI username].