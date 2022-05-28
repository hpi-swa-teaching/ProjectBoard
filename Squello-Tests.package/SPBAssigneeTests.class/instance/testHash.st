tests
testHash

	self assert: 256 equals: assignee hash.
	assignee id: 42.
	self assert: 42 equals: assignee hash.