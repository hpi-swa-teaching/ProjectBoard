tests
testUsername

	| username |
	username := 'octocat'.
	self assert: nil equals: assignee avatar.
	assignee avatar: username.
	self assert: username equals: assignee avatar.