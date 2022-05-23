tests
testId

	self assert: nil equals: assignee id.
	assignee id: 42.
	self assert: 42 equals: assignee id.