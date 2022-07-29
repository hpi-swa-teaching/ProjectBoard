tests
testAvatar

	| avatar |
	avatar := 'https://github.com/blub/1234'.
	self assert: nil equals: assignee avatar.
	assignee avatar: avatar.
	self assert: avatar equals: assignee avatar.