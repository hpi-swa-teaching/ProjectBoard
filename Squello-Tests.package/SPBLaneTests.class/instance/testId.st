tests
testId

	self assert: nil equals: lane id.
	lane id: 42.
	self assert: 42 equals: lane id.