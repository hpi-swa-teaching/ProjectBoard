tests
testUsername

	| username |
	username := 'octocat'.
	self assert: nil equals: assignee username.
	assignee username: username.
	self assert: username equals: assignee username.