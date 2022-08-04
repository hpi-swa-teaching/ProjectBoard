accessing
username

	^ username ifNil: [username := SPBGithubAPI username].