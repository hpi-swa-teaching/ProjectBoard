tests
testId

	self assert: nil equals: column id.
	column id: 42.
	self assert: 42 equals: column id.